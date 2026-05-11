.class public final Lf/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/a<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public e:Lf/m/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/m/a/a;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const-string p2, "initializer"

    .line 1
    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e;->e:Lf/m/a/a;

    sget-object p1, Lf/f;->a:Lf/f;

    iput-object p1, p0, Lf/e;->f:Ljava/lang/Object;

    iput-object p0, p0, Lf/e;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lf/e;->f:Ljava/lang/Object;

    sget-object v1, Lf/f;->a:Lf/f;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/e;->f:Ljava/lang/Object;

    sget-object v2, Lf/f;->a:Lf/f;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/e;->e:Lf/m/a/a;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Lf/m/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lf/e;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lf/e;->e:Lf/m/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e;->f:Ljava/lang/Object;

    sget-object v1, Lf/f;->a:Lf/f;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
