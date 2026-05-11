.class public final Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Le/b/a/a/p/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "CARLIFE_RECEIVER_SERVICE"

    invoke-direct {v0, v2, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Le/b/a/a/k;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "\u767e\u5ea6CarLife+"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "\u201c\u767e\u5ea6CarLife+\u201d\u6295\u5c4f\u670d\u52a1\u6b63\u5728\u8fd0\u884c"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Builder(this, CHANNEL_ID)\n                .setSmallIcon(R.drawable.ic_launcher)\n                .setContentTitle(\"\u767e\u5ea6CarLife+\")\n                .setContentText(\"\u201c\u767e\u5ea6CarLife+\u201d\u6295\u5c4f\u670d\u52a1\u6b63\u5728\u8fd0\u884c\")"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 3
    iget-object v0, v0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    .line 4
    iput-object p0, v0, Le/b/a/a/p/k/b;->k:Le/b/a/a/p/i;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 1
    iget-object v0, v0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/b/a/a/p/k/b;->k:Le/b/a/a/p/i;

    return-void
.end method
