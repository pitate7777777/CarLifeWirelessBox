.class public abstract Lg/a/c0;
.super Lg/a/o;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lg/a/o;->e:Lg/a/o$a;

    sget-object v1, Lg/a/b0;->e:Lg/a/b0;

    const-string v2, "baseKey"

    .line 2
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "safeCast"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Lf/k/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/k/b;->e:Lf/k/f$b;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a/o;-><init>()V

    return-void
.end method
