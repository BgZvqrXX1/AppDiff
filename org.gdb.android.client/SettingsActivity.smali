.class public Lorg/gdb/android/client/SettingsActivity;
.super Lorg/gdb/android/client/NullImageActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/content/SharedPreferences;

.field private k:Lorg/gdb/android/client/kr;

.field private l:Lorg/gdb/android/client/remote/y;

.field private m:Lorg/gdb/android/client/remote/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lorg/gdb/android/client/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gdb/android/client/SettingsActivity;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/gdb/android/client/NullImageActivity;-><init>()V

    .line 65
    new-instance v0, Lorg/gdb/android/client/kb;

    invoke-direct {v0, p0}, Lorg/gdb/android/client/kb;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->l:Lorg/gdb/android/client/remote/y;

    .line 86
    new-instance v0, Lorg/gdb/android/client/kh;

    invoke-direct {v0, p0}, Lorg/gdb/android/client/kh;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->m:Lorg/gdb/android/client/remote/x;

    .line 46
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lorg/gdb/android/client/SettingsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/gdb/android/client/SettingsActivity;)Lorg/gdb/android/client/kr;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    return-object v0
.end method

.method static synthetic a(Lorg/gdb/android/client/SettingsActivity;I)V
    .registers 5

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gdb/android/client/CheckInSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "got_coin_count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_real_checkin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 262
    invoke-virtual {p0}, Lorg/gdb/android/client/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 263
    iget-object v1, p0, Lorg/gdb/android/client/SettingsActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    return-void
.end method

.method static synthetic b(Lorg/gdb/android/client/SettingsActivity;)V
    .registers 1

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/gdb/android/client/SettingsActivity;->b()V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 322
    new-instance v0, Lorg/gdb/android/client/kg;

    invoke-direct {v0, p0}, Lorg/gdb/android/client/kg;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-static {p0, v0}, Lnet/youmi/android/appoffers/YoumiOffersManager;->checkStatus(Landroid/content/Context;Lnet/youmi/android/appoffers/CheckStatusNotifier;)Z

    .line 338
    return-void
.end method

.method static synthetic c(Lorg/gdb/android/client/SettingsActivity;)V
    .registers 3

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gdb/android/client/InviteFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lorg/gdb/android/client/SettingsActivity;)V
    .registers 3

    .prologue
    .line 278
    invoke-static {}, Lorg/gdb/android/client/vo/UserVO;->getCurrentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/appoffers/YoumiPointsManager;->setUserID(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/gdb/android/client/SettingsActivity;->c()V

    const/4 v0, 0x0

    new-instance v1, Lorg/gdb/android/client/kf;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kf;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-static {p0, v0, v1}, Lnet/youmi/android/appoffers/YoumiOffersManager;->showOffers(Landroid/content/Context;ILnet/youmi/android/appoffers/EarnedPointsNotifier;)Z

    return-void
.end method

.method static synthetic e(Lorg/gdb/android/client/SettingsActivity;)V
    .registers 4

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/gdb/android/client/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lorg/gdb/android/client/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-static {}, Lorg/gdb/android/client/h/a;->a()Lorg/gdb/android/client/h/a;

    move-result-object v1

    sget-object v2, Lorg/gdb/android/client/SettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/gdb/android/client/h/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f08005f

    invoke-static {p0, v0}, Lorg/gdb/android/client/utils/v;->a(Landroid/content/Context;I)V

    goto :goto_21
.end method

.method static synthetic f(Lorg/gdb/android/client/SettingsActivity;)V
    .registers 1

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/gdb/android/client/SettingsActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Lorg/gdb/android/client/NullImageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->setContentView(I)V

    .line 97
    new-instance v0, Lorg/gdb/android/client/kr;

    invoke-direct {v0, v5}, Lorg/gdb/android/client/kr;-><init>(B)V

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    .line 98
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    iget-object v1, p0, Lorg/gdb/android/client/SettingsActivity;->l:Lorg/gdb/android/client/remote/y;

    invoke-virtual {v0, v1}, Lorg/gdb/android/client/kr;->b(Lorg/gdb/android/client/remote/y;)V

    .line 99
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    iget-object v1, p0, Lorg/gdb/android/client/SettingsActivity;->m:Lorg/gdb/android/client/remote/x;

    invoke-virtual {v0, v1}, Lorg/gdb/android/client/kr;->b(Lorg/gdb/android/client/remote/x;)V

    .line 100
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    new-instance v1, Lorg/gdb/android/client/ki;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/ki;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/gdb/android/client/kr;->a(Lorg/gdb/android/client/remote/y;)V

    .line 124
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    new-instance v1, Lorg/gdb/android/client/kj;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kj;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/gdb/android/client/kr;->a(Lorg/gdb/android/client/remote/x;)V

    .line 131
    invoke-virtual {p0}, Lorg/gdb/android/client/SettingsActivity;->getApplication()Landroid/app/Application;

    invoke-static {}, Lorg/gdb/android/client/GDBApplication;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->j:Landroid/content/SharedPreferences;

    .line 132
    const v0, 0x7f0b0167

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->b:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0168

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->c:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0b0169

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->d:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0b016a

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->e:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->f:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->g:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f080176

    invoke-virtual {p0, v2}, Lorg/gdb/android/client/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    const v2, 0x7f080177

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/gdb/android/client/g/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/gdb/android/client/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->h:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0b016c

    invoke-virtual {p0, v0}, Lorg/gdb/android/client/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->i:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->b:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kk;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kk;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kl;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kl;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/ko;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/ko;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kp;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kp;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kq;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kq;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kc;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kc;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/kd;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/kd;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lorg/gdb/android/client/ke;

    invoke-direct {v1, p0}, Lorg/gdb/android/client/ke;-><init>(Lorg/gdb/android/client/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Lorg/gdb/android/client/NullImageActivity;->onDestroy()V

    .line 269
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lorg/gdb/android/client/SettingsActivity;->k:Lorg/gdb/android/client/kr;

    invoke-virtual {v0}, Lorg/gdb/android/client/kr;->b()V

    .line 272
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 250
    invoke-super {p0}, Lorg/gdb/android/client/NullImageActivity;->onResume()V

    .line 251
    invoke-direct {p0}, Lorg/gdb/android/client/SettingsActivity;->b()V

    .line 252
    return-void
.end method
