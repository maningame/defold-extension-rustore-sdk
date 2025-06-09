#define EXTENSION_NAME RuStoreReview
#define LIB_NAME "RuStoreReview"
#define MODULE_NAME "rustorereview"

#if defined(DM_PLATFORM_ANDROID)

#include <dmsdk/sdk.h>
#include <dmsdk/dlib/android.h>

#define METRIC_TYPE "defold"

static int Init(lua_State* L)
{
    DM_LUA_STACK_CHECK(L, 0);

    dmAndroid::ThreadAttacher thread;
    JNIEnv* env = thread.GetEnv();

    jclass cls = dmAndroid::LoadClass(env, "ru.rustore.defold.review.RuStoreReview");
    jmethodID method = env->GetStaticMethodID(cls, "init", "(Landroid/app/Activity;Ljava/lang/String;)V");

    const char* metricType = METRIC_TYPE;
    jstring jmetricType = env->NewStringUTF(metricType);

    env->CallStaticVoidMethod(cls, method, dmGraphics::GetNativeAndroidActivity(), jmetricType);

    env->DeleteLocalRef(jmetricType);

    thread.Detach();
    
    return 0;
}

static int RequestReviewFlow(lua_State* L)
{
    DM_LUA_STACK_CHECK(L, 0);

    dmAndroid::ThreadAttacher thread;
    JNIEnv* env = thread.GetEnv();

    jclass cls = dmAndroid::LoadClass(env, "ru.rustore.defold.review.RuStoreReview");
    jmethodID method = env->GetStaticMethodID(cls, "requestReviewFlow", "()V");

    env->CallStaticVoidMethod(cls, method);

    thread.Detach();
    
    return 0;
}

static int LaunchReviewFlow(lua_State* L)
{
    DM_LUA_STACK_CHECK(L, 0);

    dmAndroid::ThreadAttacher thread;
    JNIEnv* env = thread.GetEnv();

    jclass cls = dmAndroid::LoadClass(env, "ru.rustore.defold.review.RuStoreReview");
    jmethodID method = env->GetStaticMethodID(cls, "launchReviewFlow", "()V");

    env->CallStaticVoidMethod(cls, method);

    thread.Detach();

    return 0;
}

// Functions exposed to Lua
static const luaL_reg Module_methods[] =
{
    {"init", Init},
    {"request_review_flow", RequestReviewFlow},
    {"launch_review_flow", LaunchReviewFlow},
    {0, 0}
};

#endif

static void LuaInit(lua_State* L)
{
    int top = lua_gettop(L);
    
    luaL_register(L, MODULE_NAME, Module_methods);

    lua_pop(L, 1);
    assert(top == lua_gettop(L));
}

static dmExtension::Result AppInitializeRuStoreReviewExtension(dmExtension::AppParams* params)
{
    return dmExtension::RESULT_OK;
}

static dmExtension::Result InitializeRuStoreReviewExtension(dmExtension::Params* params)
{
    LuaInit(params->m_L);
    return dmExtension::RESULT_OK;
}

static dmExtension::Result AppFinalizeRuStoreReviewExtension(dmExtension::AppParams* params)
{
    return dmExtension::RESULT_OK;
}

static dmExtension::Result FinalizeRuStoreReviewExtension(dmExtension::Params* params)
{
    return dmExtension::RESULT_OK;
}

DM_DECLARE_EXTENSION(EXTENSION_NAME, LIB_NAME, AppInitializeRuStoreReviewExtension, AppFinalizeRuStoreReviewExtension, InitializeRuStoreReviewExtension, nullptr, nullptr, FinalizeRuStoreReviewExtension)
