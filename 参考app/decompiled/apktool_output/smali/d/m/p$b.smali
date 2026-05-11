.class public Ld/m/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Ld/m/d$a;->ON_CREATE:Ld/m/d$a;

    invoke-static {p1, p2}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_RESUME:Ld/m/d$a;

    invoke-static {p1, v0}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_START:Ld/m/d$a;

    invoke-static {p1, v0}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_DESTROY:Ld/m/d$a;

    invoke-static {p1, v0}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_PAUSE:Ld/m/d$a;

    invoke-static {p1, v0}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_STOP:Ld/m/d$a;

    invoke-static {p1, v0}, Ld/m/p;->a(Landroid/app/Activity;Ld/m/d$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
