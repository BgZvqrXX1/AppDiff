.class public Lcom/umeng/common/net/DownloadingService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/DownloadingService$a;,
        Lcom/umeng/common/net/DownloadingService$b;,
        Lcom/umeng/common/net/DownloadingService$c;,
        Lcom/umeng/common/net/DownloadingService$d;
    }
.end annotation


# static fields
.field static final a:I = 0x3

.field static final b:I = 0x4

.field static final c:I = 0x5

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x64

.field static final g:Ljava/lang/String; = "filename"

.field public static h:Z = false

.field private static final j:Ljava/lang/String;

.field private static final l:I = 0x3

.field private static final p:J = 0x1f40L

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/common/net/DownloadingService$d;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/Boolean;


# instance fields
.field final i:Landroid/os/Messenger;

.field private k:Landroid/app/NotificationManager;

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;

.field private o:Lcom/umeng/common/net/DownloadingService$a;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    sput-boolean v1, Lcom/umeng/common/net/DownloadingService;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/common/net/DownloadingService$c;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/DownloadingService$c;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->i:Landroid/os/Messenger;

    return-void
.end method

.method public static a(Lcom/umeng/common/net/a$a;)I
    .registers 5

    iget-object v0, p0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
    .registers 14

    const v9, 0x1080081

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v9, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/b;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->c(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p3, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/common/a/c;->g(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->a(Landroid/content/Context;)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v0, v7, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-boolean v3, p1, Lcom/umeng/common/net/a$a;->e:Z

    if-eqz v3, :cond_cf

    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "continue"

    invoke-static {p2, v4}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, v1, p2}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/app/Notification;I)V

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cancel"

    invoke-static {p2, v4}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_ce
    return-object v1

    :cond_cf
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_ce
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 6

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download service clear cache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget-object v3, v3, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    :cond_2e
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    iget v2, v0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService$d;->b()V

    invoke-direct {p0}, Lcom/umeng/common/net/DownloadingService;->e()V

    return-void
.end method

.method private a(Landroid/app/Notification;I)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/c;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    const-string v4, "umeng_common_gradient_green"

    invoke-virtual {v3, v4}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Landroid/app/NotificationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;JJJ)V

    return-void
.end method

.method private a(Lcom/umeng/common/net/a$a;JJJ)V
    .registers 12

    iget-object v0, p1, Lcom/umeng/common/net/a$a;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/umeng/common/b/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2e

    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    :cond_2e
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->d:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/umeng/common/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/umeng/common/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 18

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_e7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e7

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    move-object v14, v0

    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    const-string v3, "continue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    if-nez v1, :cond_99

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v2, "Receive action do play click."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static/range {p1 .. p1}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    :goto_7e
    return v1

    :cond_7f
    new-instance v1, Lcom/umeng/common/net/DownloadingService$b;

    iget-object v4, v14, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget v6, v14, Lcom/umeng/common/net/DownloadingService$d;->d:I

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService;->o:Lcom/umeng/common/net/DownloadingService$a;

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    iput-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {v1}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/app/Notification;I)V

    const/4 v1, 0x1

    goto :goto_7e

    :cond_99
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v3, "Receive action do play click."

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    const/4 v1, 0x0

    iput-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/app/Notification;I)V

    const/4 v1, 0x1

    goto :goto_7e

    :cond_ae
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    sget-object v2, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v3, "Receive action do stop click."

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bd} :catch_e3

    if-eqz v1, :cond_c8

    const/4 v2, 0x2

    :try_start_c0
    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_de
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e9

    :goto_c3
    :try_start_c3
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_e3

    :goto_c6
    const/4 v1, 0x1

    goto :goto_7e

    :cond_c8
    :try_start_c8
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x1

    aget-wide v10, v1, v2

    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x2

    aget-wide v12, v1, v2

    iget-object v7, v14, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;JJJ)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_dd} :catch_de
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_e9

    goto :goto_c3

    :catch_de
    move-exception v1

    :try_start_df
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_c6

    :catch_e3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e7
    const/4 v1, 0x0

    goto :goto_7e

    :catchall_e9
    move-exception v1

    :try_start_ea
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V

    throw v1
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ee} :catch_e3
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/app/Notification;I)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/c;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    const-string v4, "umeng_common_gradient_orange"

    invoke-virtual {v3, v4}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static final b(Ljava/util/Map;Z[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/common/net/i;

    invoke-direct {v1, p2, p1, p0}, Lcom/umeng/common/net/i;-><init>([Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_10

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10
.end method

.method static synthetic b(Lcom/umeng/common/net/a$a;)Z
    .registers 2

    invoke-static {p0}, Lcom/umeng/common/net/DownloadingService;->d(Lcom/umeng/common/net/a$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/umeng/common/net/a$a;)V
    .registers 9

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startDownload([mComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;)I

    move-result v4

    new-instance v0, Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/umeng/common/net/DownloadingService;->o:Lcom/umeng/common/net/DownloadingService$a;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    new-instance v1, Lcom/umeng/common/net/DownloadingService$d;

    invoke-direct {v1, p1, v4}, Lcom/umeng/common/net/DownloadingService$d;-><init>(Lcom/umeng/common/net/a$a;I)V

    invoke-virtual {v1}, Lcom/umeng/common/net/DownloadingService$d;->a()V

    iput-object v0, v1, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    invoke-direct {p0}, Lcom/umeng/common/net/DownloadingService;->e()V

    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->h:Z

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6b

    :cond_6a
    return-void

    :cond_6b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    sget-object v2, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64
.end method

.method private d()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.umeng.intent.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/umeng/common/net/f;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/f;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v1, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/common/net/DownloadingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static d(Lcom/umeng/common/net/a$a;)Z
    .registers 8

    const/4 v1, 0x0

    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->h:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_24
    :goto_24
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    if-nez v0, :cond_78

    move v0, v1

    :goto_29
    return v0

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    sget-object v4, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " downling  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_5d
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "downling  null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_78
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    move v0, v1

    goto :goto_29

    :cond_8a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_29
.end method

.method private e()V
    .registers 6

    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->h:Z

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sget-object v2, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client size ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   cacheSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_4f

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client size ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   cacheSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show single toast.["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->t:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/g;

    invoke-direct {v2, p0, p1}, Lcom/umeng/common/net/g;-><init>(Lcom/umeng/common/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/h;

    invoke-direct {v2, p0}, Lcom/umeng/common/net/h;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->i:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->h:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/common/Log;->LOG:Z

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    :cond_d
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/common/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->k:Landroid/app/NotificationManager;

    iput-object p0, p0, Lcom/umeng/common/net/DownloadingService;->m:Landroid/content/Context;

    new-instance v0, Lcom/umeng/common/net/d;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/d;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Handler;

    new-instance v0, Lcom/umeng/common/net/e;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/e;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->o:Lcom/umeng/common/net/DownloadingService$a;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const v0, 0x3f480

    :try_start_3
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/common/net/c;->a(I)V

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/common/net/c;->finalize()V

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/umeng/common/net/DownloadingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_26

    :cond_22
    :goto_22
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_26
    move-exception v0

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    sget-object v0, Lcom/umeng/common/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
