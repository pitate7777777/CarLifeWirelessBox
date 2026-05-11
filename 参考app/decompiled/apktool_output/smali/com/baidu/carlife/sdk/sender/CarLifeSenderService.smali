.class public final Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Le/b/a/a/i;


# instance fields
.field public e:I

.field public f:Le/b/a/a/q/b;

.field public final g:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Le/b/a/a/q/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/b/a/a/q/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/q/i<",
            "Le/b/a/a/q/d/c;",
            "Le/b/a/a/q/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/b/a/a/q/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/q/i<",
            "Le/b/a/a/q/d/e;",
            "Le/b/a/a/q/h;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/b/a/a/q/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/q/i<",
            "Le/b/a/a/q/d/d;",
            "Le/b/a/a/q/g;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    new-instance v0, Le/b/a/a/q/i;

    sget-object v1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$b;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$b;

    new-instance v2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$c;

    invoke-direct {v2, p0}, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$c;-><init>(Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;)V

    invoke-direct {v0, v1, v2}, Le/b/a/a/q/i;-><init>(Lf/m/a/b;Lf/m/a/b;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->h:Le/b/a/a/q/i;

    new-instance v0, Le/b/a/a/q/i;

    sget-object v1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$j;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$j;

    new-instance v2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$k;

    invoke-direct {v2, p0}, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$k;-><init>(Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;)V

    invoke-direct {v0, v1, v2}, Le/b/a/a/q/i;-><init>(Lf/m/a/b;Lf/m/a/b;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->i:Le/b/a/a/q/i;

    new-instance v0, Le/b/a/a/q/i;

    sget-object v1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$h;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$h;

    new-instance v2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$i;

    invoke-direct {v2, p0}, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$i;-><init>(Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;)V

    invoke-direct {v0, v1, v2}, Le/b/a/a/q/i;-><init>(Lf/m/a/b;Lf/m/a/b;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->j:Le/b/a/a/q/i;

    new-instance v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    invoke-direct {v0, p0}, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;-><init>(Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->k:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->k:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    return-object p1
.end method

.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->e:I

    iget-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    sget-object v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$d;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$d;

    invoke-static {p1, v0}, Ld/b/k/m$i;->h(Landroid/os/RemoteCallbackList;Lf/m/a/b;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->e:I

    iget-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    sget-object v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;

    invoke-static {p1, v0}, Ld/b/k/m$i;->h(Landroid/os/RemoteCallbackList;Lf/m/a/b;)V

    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->e:I

    iget-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    sget-object v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$f;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$f;

    invoke-static {p1, v0}, Ld/b/k/m$i;->h(Landroid/os/RemoteCallbackList;Lf/m/a/b;)V

    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->e:I

    iget-object p1, p0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    sget-object v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$g;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$g;

    invoke-static {p1, v0}, Ld/b/k/m$i;->h(Landroid/os/RemoteCallbackList;Lf/m/a/b;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
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

    const-string v2, "CARLIFE_SENDER_SERVICE"

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

    const-string v1, "Builder(this,\n                CHANNEL_ID\n            )\n                .setSmallIcon(R.drawable.ic_launcher)\n                .setContentTitle(\"\u767e\u5ea6CarLife+\")\n                .setContentText(\"\u201c\u767e\u5ea6CarLife+\u201d\u6295\u5c4f\u670d\u52a1\u6b63\u5728\u8fd0\u884c\")"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

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
    invoke-static {}, Le/b/a/a/q/a;->a()Le/b/a/a/q/b;

    const/4 v0, 0x0

    throw v0
.end method
