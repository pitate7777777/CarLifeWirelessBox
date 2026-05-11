.class public abstract Lg/a/z0/c;
.super Lg/a/z0/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/z0/l;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _consensus:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/a/z0/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/a/z0/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/a/z0/l;-><init>()V

    sget-object v0, Lg/a/z0/b;->a:Ljava/lang/Object;

    iput-object v0, p0, Lg/a/z0/c;->_consensus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/a/z0/c;->_consensus:Ljava/lang/Object;

    sget-object v1, Lg/a/z0/b;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    move-object v0, p0

    check-cast v0, Lg/a/m0$c;

    .line 1
    move-object v1, p1

    check-cast v1, Lg/a/z0/h;

    .line 2
    iget-object v1, v0, Lg/a/m0$c;->d:Lg/a/m0;

    invoke-virtual {v1}, Lg/a/m0;->t()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lg/a/m0$c;->e:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lg/a/z0/g;->a:Ljava/lang/Object;

    .line 4
    :goto_1
    iget-object v1, p0, Lg/a/z0/c;->_consensus:Ljava/lang/Object;

    sget-object v4, Lg/a/z0/b;->a:Ljava/lang/Object;

    if-eq v1, v4, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    sget-object v1, Lg/a/z0/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lg/a/z0/c;->_consensus:Ljava/lang/Object;

    .line 5
    :cond_4
    :goto_2
    move-object v1, p0

    check-cast v1, Lg/a/z0/h$a;

    .line 6
    check-cast p1, Lg/a/z0/h;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    .line 7
    iget-object v3, v1, Lg/a/z0/h$a;->b:Lg/a/z0/h;

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lg/a/z0/h$a;->c:Lg/a/z0/h;

    :goto_4
    if-eqz v3, :cond_7

    sget-object v4, Lg/a/z0/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p1, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    iget-object p1, v1, Lg/a/z0/h$a;->b:Lg/a/z0/h;

    iget-object v1, v1, Lg/a/z0/h$a;->c:Lg/a/z0/h;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1, v1}, Lg/a/z0/h;->b(Lg/a/z0/h;)V

    :cond_7
    return-object v0
.end method
