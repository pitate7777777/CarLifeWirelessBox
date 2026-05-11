.class public Lc/a/a/a/a/c$b;
.super Lc/a/a/a/a/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Lc/a/a/a/a/a$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public E0(Z)V
    .locals 0

    iget-object p1, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/c;

    return-void
.end method

.method public X0(I)V
    .locals 0

    iget-object p1, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/c;

    return-void
.end method

.method public a1()V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c;

    return-void
.end method

.method public g0(I)V
    .locals 0

    iget-object p1, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/c;

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public i1(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    iget-object p1, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/c;

    return-void
.end method

.method public m1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lc/a/a/a/a/c$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/a/a/c;

    return-void
.end method
