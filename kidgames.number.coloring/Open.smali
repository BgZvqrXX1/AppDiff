.class public Lkidgames/number/coloring/Open;
.super Landroid/app/Activity;
.source "Open.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkidgames/number/coloring/Open$CHOOSED_GAME;,
        Lkidgames/number/coloring/Open$TestAsyncTask;
    }
.end annotation


# static fields
.field public static AdHubId:Ljava/lang/String; = null

.field public static MoPubBigChooseId:Ljava/lang/String; = null

.field public static MoPubBigId:Ljava/lang/String; = null

.field public static MoPubSmallChooseId:Ljava/lang/String; = null

.field public static MoPubSmallId:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "AbcColoringPrefsFile"

.field static editor:Landroid/content/SharedPreferences$Editor;

.field public static heightPixels:I

.field public static runGame:Lkidgames/number/coloring/Open$CHOOSED_GAME;

.field static settings:Landroid/content/SharedPreferences;

.field public static widthPixels:I


# instance fields
.field PortraitConfig:Landroid/content/res/Configuration;

.field dm1:Landroid/util/DisplayMetrics;

.field isTablet:Z

.field myATask:Lkidgames/number/coloring/Open$TestAsyncTask;

.field token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "xv0c000000011f"

    sput-object v0, Lkidgames/number/coloring/Open;->AdHubId:Ljava/lang/String;

    .line 39
    const-string v0, "0dcccb52746e11e281c11231392559e4"

    sput-object v0, Lkidgames/number/coloring/Open;->MoPubBigId:Ljava/lang/String;

    .line 40
    const-string v0, "f2cf4adc746d11e281c11231392559e4"

    sput-object v0, Lkidgames/number/coloring/Open;->MoPubSmallId:Ljava/lang/String;

    .line 41
    const-string v0, "16380504746e11e295fa123138070049"

    sput-object v0, Lkidgames/number/coloring/Open;->MoPubBigChooseId:Ljava/lang/String;

    .line 42
    const-string v0, "0743f79c746e11e295fa123138070049"

    sput-object v0, Lkidgames/number/coloring/Open;->MoPubSmallChooseId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "TA4f3sBUZCncPQp8JBYA"

    iput-object v0, p0, Lkidgames/number/coloring/Open;->token:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lkidgames/number/coloring/Open;)V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Lkidgames/number/coloring/Open;->startGame()V

    return-void
.end method

.method private startGame()V
    .registers 3

    .prologue
    .line 183
    iget-boolean v1, p0, Lkidgames/number/coloring/Open;->isTablet:Z

    invoke-static {v1}, Lkidgames/library/AdProvider;->SetActiveAdProvider(Z)V

    .line 185
    sget-object v1, Lkidgames/number/coloring/Open$CHOOSED_GAME;->MAIN:Lkidgames/number/coloring/Open$CHOOSED_GAME;

    sput-object v1, Lkidgames/number/coloring/Open;->runGame:Lkidgames/number/coloring/Open$CHOOSED_GAME;

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lkidgames/number/coloring/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lkidgames/number/coloring/Open;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 51
    iget-object v0, p0, Lkidgames/number/coloring/Open;->PortraitConfig:Landroid/content/res/Configuration;

    invoke-super {p0, v0}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_15

    .line 60
    invoke-static {p0}, Lcom/appbrain/AppBrain;->init(Landroid/content/Context;)V

    .line 61
    :cond_15
    invoke-virtual {p0, v5}, Lkidgames/number/coloring/Open;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lkidgames/number/coloring/Open;->PortraitConfig:Landroid/content/res/Configuration;

    .line 67
    const-string v1, "AbcColoringPrefsFile"

    invoke-virtual {p0, v1, v4}, Lkidgames/number/coloring/Open;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    .line 68
    sget-object v1, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lkidgames/number/coloring/Open;->editor:Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lkidgames/number/coloring/Open;->isTablet:Z

    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    .line 73
    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget-object v1, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lkidgames/number/coloring/Open;->heightPixels:I

    .line 75
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Kindle Fire"

    if-ne v1, v2, :cond_71

    .line 76
    iget-object v1, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v1, v1, -0x14

    sput v1, Lkidgames/number/coloring/Open;->heightPixels:I

    .line 78
    :cond_71
    iget-object v1, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lkidgames/number/coloring/Open;->widthPixels:I

    .line 79
    const-string v1, "KIDGAMES:"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Height = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkidgames/number/coloring/Open;->dm1:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "KIDGAMES:"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HeightRes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lkidgames/number/coloring/Open;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WidthRes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lkidgames/number/coloring/Open;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v4

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderSmall1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    .line 84
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v4

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderSmall2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 85
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v4

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderSmall3"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    .line 86
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v4

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderSmall4"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v7

    .line 88
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v5

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderBig1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    .line 89
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v5

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderBig2"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 90
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v5

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderBig3"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    .line 91
    sget-object v1, Lkidgames/library/AdProvider;->AdProviderPerc:[[I

    aget-object v1, v1, v5

    sget-object v2, Lkidgames/number/coloring/Open;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ProviderBig4"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v7

    .line 94
    new-instance v1, Lkidgames/number/coloring/Open$TestAsyncTask;

    invoke-direct {v1, p0}, Lkidgames/number/coloring/Open$TestAsyncTask;-><init>(Lkidgames/number/coloring/Open;)V

    iput-object v1, p0, Lkidgames/number/coloring/Open;->myATask:Lkidgames/number/coloring/Open$TestAsyncTask;

    .line 95
    iget-object v1, p0, Lkidgames/number/coloring/Open;->myATask:Lkidgames/number/coloring/Open$TestAsyncTask;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lkidgames/number/coloring/Open$TestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    new-instance v0, Lcom/edealya/lib/DeviceIdentifier;

    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkidgames/number/coloring/Open;->token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/edealya/lib/DeviceIdentifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    .local v0, "edDevice":Lcom/edealya/lib/DeviceIdentifier;
    invoke-virtual {v0}, Lcom/edealya/lib/DeviceIdentifier;->update()V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    sget-boolean v0, Lkidgames/number/coloring/Main;->isMainFinished:Z

    if-eqz v0, :cond_21

    .line 172
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_17

    .line 173
    invoke-static {}, Lcom/appbrain/AppBrain;->getAds()Lcom/appbrain/AdService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appbrain/AdService;->maybeShowInterstitial(Landroid/app/Activity;)Z

    .line 174
    :cond_17
    invoke-virtual {p0}, Lkidgames/number/coloring/Open;->finish()V

    .line 175
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 177
    :cond_21
    return-void
.end method
