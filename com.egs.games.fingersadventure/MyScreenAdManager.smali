.class public Lcom/enjoygame/tool/MyScreenAdManager;
.super Ljava/lang/Object;
.source "MyScreenAdManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Chartboost"

.field private static cb:Lcom/chartboost/sdk/Chartboost;

.field private static chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

.field private static interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field static isCnUser:Z

.field private static mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    .line 150
    new-instance v0, Lcom/enjoygame/tool/MyScreenAdManager$1;

    invoke-direct {v0}, Lcom/enjoygame/tool/MyScreenAdManager$1;-><init>()V

    sput-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 289
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/google/android/gms/ads/InterstitialAd;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static onBackPressed()Z
    .registers 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    const/4 v0, 0x1

    .line 147
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static onDestroy()V
    .registers 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    if-nez v0, :cond_9

    .line 129
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 131
    :cond_9
    return-void
.end method

.method public static onStart()V
    .registers 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    if-nez v0, :cond_9

    .line 107
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 109
    :cond_9
    return-void
.end method

.method public static onStop()V
    .registers 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    if-nez v0, :cond_9

    .line 118
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 120
    :cond_9
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 5
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 37
    sput-object p0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    .line 38
    const/4 v2, 0x1

    sput-boolean v2, Lcom/enjoygame/tool/MyScreenAdManager;->isCnUser:Z

    .line 42
    const-string v0, "5403434ac26ee42f84cfa7f7"

    .line 43
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "d0d91546135a52905d73b0d9ec376fb523d9d583"

    .line 46
    .local v1, "appSignature":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/enjoygame/tool/MyScreenAdManager;->chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 48
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_32

    .line 54
    new-instance v2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/enjoygame/tool/MyScreenAdManager;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 55
    sget-object v2, Lcom/enjoygame/tool/MyScreenAdManager;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v3, "ca-app-pub-1329574336519263/5719859239"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 56
    sget-object v2, Lcom/enjoygame/tool/MyScreenAdManager;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v3, Lcom/enjoygame/tool/MyScreenAdManager$2;

    invoke-direct {v3}, Lcom/enjoygame/tool/MyScreenAdManager$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 71
    :cond_32
    return-void
.end method

.method public static showScreenAd()V
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/enjoygame/tool/MyScreenAdManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/enjoygame/tool/MyScreenAdManager$3;

    invoke-direct {v1}, Lcom/enjoygame/tool/MyScreenAdManager$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
