.class public Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "Babyjoy_dwlc.java"


# static fields
.field static adlocation:I

.field private static filelist:Ljava/util/ArrayList;

.field static mHandlers:Landroid/os/Handler;

.field static myView:Landroid/view/View;

.field static s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

.field static s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

.field static ss:Landroid/content/ContextWrapper;

.field static ss1:Landroid/content/Context;

.field private static ssKey1:Ljava/lang/String;

.field private static ssKey2:Ljava/lang/String;


# instance fields
.field bLoadad:I

.field iOpenGameScene:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 57
    sput-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->adlocation:I

    .line 67
    sput-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->filelist:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc$1;

    invoke-direct {v0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc$1;-><init>()V

    sput-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->mHandlers:Landroid/os/Handler;

    .line 393
    const-string v0, "cocos2dcpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 59
    iput v0, p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->bLoadad:I

    .line 62
    iput v0, p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->iOpenGameScene:I

    .line 56
    return-void
.end method

.method public static CheckNewGame(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    iget v0, v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->iOpenGameScene:I

    return v0
.end method

.method public static GetAssetsFiles()Ljava/lang/String;
    .registers 4

    .prologue
    .line 347
    sget-object v2, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->refreshFileList(Ljava/lang/String;)V

    .line 349
    const-string v1, ""

    .line 351
    .local v1, "paths":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget-object v2, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_13

    .line 353
    return-object v1

    .line 352
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static GetContext1()Landroid/content/ContextWrapper;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public static IsNetworkAvailable()Z
    .registers 5

    .prologue
    .line 356
    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 357
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_16

    .line 361
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 362
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_16

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v3, v2

    if-lt v1, v3, :cond_18

    .line 370
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_16
    const/4 v3, 0x0

    :goto_17
    return v3

    .line 364
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_18
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_24

    .line 365
    const/4 v3, 0x1

    goto :goto_17

    .line 363
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public static IsWifi()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 375
    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    .line 376
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 377
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 378
    .local v1, "networkINfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    .line 379
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_18

    .line 382
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public static OpenAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "strurl"    # Ljava/lang/String;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 132
    sput-object p1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    .line 133
    sput-object p2, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->mHandlers:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    return-void
.end method

.method public static OpenAppDownPage(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    .local v0, "localIntent2":Landroid/content/Intent;
    sget-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss1:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public static StartNewGame(Ljava/lang/String;)V
    .registers 4
    .param p0, "strPackageName"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    invoke-virtual {v1}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, "LaunchIntent":Landroid/content/Intent;
    const-string v1, "OpenNewGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    sget-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    invoke-virtual {v1, v0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public static getVersionCode()I
    .registers 6

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 186
    .local v2, "versionCode":I
    :try_start_1
    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    invoke-virtual {v3}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    invoke-virtual {v4}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 187
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_15

    .line 192
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_14
    return v2

    .line 188
    :catch_15
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_14
.end method

.method public static installApk(Ljava/lang/String;)V
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    sget-object v1, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss1:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public static isAppExist(Ljava/lang/String;)I
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 225
    :try_start_1
    sget-object v4, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    invoke-virtual {v4}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 226
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_a

    .line 238
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_9
    return v3

    .line 228
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_a
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_19

    move-result-object v1

    .line 233
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_f
    if-nez v1, :cond_1f

    .line 234
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\u6ca1\u6709\u5b89\u88c5"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 229
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_19
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 231
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 237
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u5df2\u7ecf\u5b89\u88c5"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    const/4 v3, 0x1

    goto :goto_9
.end method

.method public static openUrl(Ljava/lang/String;)V
    .registers 6
    .param p0, "strurl"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v3, "http"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "index":I
    if-nez v0, :cond_19

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v1, "it":Landroid/content/Intent;
    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss1:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    .end local v1    # "it":Landroid/content/Intent;
    :goto_18
    return-void

    .line 215
    :cond_19
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v2, "localIntent2":Landroid/content/Intent;
    sget-object v3, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss1:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method public static reloadad(I)V
    .registers 3
    .param p0, "ilocation"    # I

    .prologue
    .line 250
    sput p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->adlocation:I

    .line 251
    sget-object v0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->mHandlers:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method


# virtual methods
.method public Initload()V
    .registers 12

    .prologue
    .line 140
    iget v7, p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->bLoadad:I

    if-nez v7, :cond_5f

    .line 142
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "test.jar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v6, "path":Ljava/io/File;
    const-string v7, "dex"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 145
    .local v2, "dex":Ljava/io/File;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 145
    invoke-direct {v0, v7, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 147
    .local v0, "cl":Ldalvik/system/DexClassLoader;
    const/4 v1, 0x0

    .line 150
    .local v1, "claZZ":Ljava/lang/Class;
    :try_start_44
    const-string v7, "com.dynamic.DynamicLoad"

    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynamic/IDynamic;

    .line 152
    .local v5, "lib":Lcom/dynamic/IDynamic;
    sget-object v7, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v9, 0x31

    invoke-interface {v5, p0, v7, v8, v9}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    sput-object v7, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5c} :catch_60

    .line 164
    .end local v5    # "lib":Lcom/dynamic/IDynamic;
    :goto_5c
    const/4 v7, 0x1

    iput v7, p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->bLoadad:I

    .line 166
    .end local v0    # "cl":Ldalvik/system/DexClassLoader;
    .end local v1    # "claZZ":Ljava/lang/Class;
    .end local v2    # "dex":Ljava/io/File;
    .end local v6    # "path":Ljava/io/File;
    :cond_5f
    return-void

    .line 154
    .restart local v0    # "cl":Ldalvik/system/DexClassLoader;
    .restart local v1    # "claZZ":Ljava/lang/Class;
    .restart local v2    # "dex":Ljava/io/File;
    .restart local v6    # "path":Ljava/io/File;
    :catch_60
    move-exception v3

    .line 156
    .local v3, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "test.jar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 160
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 162
    :cond_90
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "OpenNewGame"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    .local v0, "bOpenNewGame":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 77
    const/4 v2, 0x1

    iput v2, p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->iOpenGameScene:I

    .line 79
    :cond_18
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sput-object p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s_context:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    .line 83
    sput-object p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss:Landroid/content/ContextWrapper;

    .line 84
    sput-object p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ss1:Landroid/content/Context;

    .line 85
    sput-object p0, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->s1:Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;

    .line 88
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 171
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 180
    return-void
.end method

.method protected refreshFileList(Ljava/lang/String;)V
    .registers 10
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 312
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 314
    .local v3, "ff":[Ljava/lang/String;
    :try_start_5
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_11

    move-result-object v3

    .line 319
    :goto_9
    if-eqz v3, :cond_10

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "f2":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    array-length v6, v3

    if-lt v4, v6, :cond_1c

    .line 343
    .end local v2    # "f2":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_10
    return-void

    .line 315
    :catch_11
    move-exception v1

    .line 316
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "tag"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 324
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "f2":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1c
    const-string v5, ""

    .line 325
    .local v5, "subPath":Ljava/lang/String;
    if-eqz p1, :cond_4c

    const-string v6, ""

    if-eq p1, v6, :cond_4c

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    :goto_3d
    :try_start_3d
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4f

    move-result-object v2

    .line 336
    :goto_41
    array-length v6, v2

    if-nez v6, :cond_54

    .line 337
    sget-object v6, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 328
    :cond_4c
    aget-object v5, v3, v4

    goto :goto_3d

    .line 332
    :catch_4f
    move-exception v1

    .line 334
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 339
    .end local v1    # "e":Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0, v5}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->refreshFileList(Ljava/lang/String;)V

    goto :goto_49
.end method

.method public relocationAd()V
    .registers 13

    .prologue
    .line 256
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    if-nez v8, :cond_5

    .line 305
    :goto_4
    return-void

    .line 259
    :cond_5
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 260
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 263
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "test.jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v7, "path":Ljava/io/File;
    const-string v8, "dex"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 266
    .local v2, "dex":Ljava/io/File;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 266
    invoke-direct {v0, v8, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 268
    .local v0, "cl":Ldalvik/system/DexClassLoader;
    const/4 v1, 0x0

    .line 271
    .local v1, "claZZ":Ljava/lang/Class;
    :try_start_50
    const-string v8, "com.dynamic.DynamicLoad"

    invoke-virtual {v0, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynamic/IDynamic;

    .line 273
    .local v5, "lib":Lcom/dynamic/IDynamic;
    sget v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->adlocation:I

    packed-switch v8, :pswitch_data_ca

    goto :goto_4

    .line 276
    :pswitch_62
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x33

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6e} :catch_6f

    goto :goto_4

    .line 296
    .end local v5    # "lib":Lcom/dynamic/IDynamic;
    :catch_6f
    move-exception v3

    .line 298
    .local v3, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/io/File;

    const-string v8, "/mnt/sdcard/test.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 301
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 303
    :cond_80
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 279
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "lib":Lcom/dynamic/IDynamic;
    :pswitch_84
    :try_start_84
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x31

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    goto/16 :goto_4

    .line 282
    :pswitch_92
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x35

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    goto/16 :goto_4

    .line 285
    :pswitch_a0
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x53

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    goto/16 :goto_4

    .line 288
    :pswitch_ae
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x51

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;

    goto/16 :goto_4

    .line 291
    :pswitch_bc
    sget-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey1:Ljava/lang/String;

    sget-object v9, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->ssKey2:Ljava/lang/String;

    const/16 v10, 0x55

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/dynamic/IDynamic;->LoadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/cdbabyjoy/dwnc/Babyjoy_dwlc;->myView:Landroid/view/View;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_c8} :catch_6f

    goto/16 :goto_4

    .line 273
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_62
        :pswitch_84
        :pswitch_92
        :pswitch_a0
        :pswitch_ae
        :pswitch_bc
    .end packed-switch
.end method
