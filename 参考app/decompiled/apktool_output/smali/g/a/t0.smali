.class public final Lg/a/t0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/t0;

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lg/a/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/a/t0;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final a()Lg/a/x;
    .locals 2

    sget-object v0, Lg/a/t0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/x;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lg/a/d;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/a/d;-><init>(Ljava/lang/Thread;)V

    .line 2
    sget-object v1, Lg/a/t0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
