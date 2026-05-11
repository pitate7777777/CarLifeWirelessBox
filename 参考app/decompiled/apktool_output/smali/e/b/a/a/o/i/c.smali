.class public final Le/b/a/a/o/i/c;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/o/i/d;


# direct methods
.method public constructor <init>(Le/b/a/a/o/i/d;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/o/i/c;->e:Le/b/a/a/o/i/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/i/c;->e:Le/b/a/a/o/i/d;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    .line 3
    invoke-interface {v0}, Le/b/a/a/c;->p0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/o/i/c;->e:Le/b/a/a/o/i/d;

    .line 4
    iget-object v0, v0, Le/b/a/a/o/i/d;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Le/b/a/a/o/i/c;->e:Le/b/a/a/o/i/d;

    .line 6
    iget-object v0, v0, Le/b/a/a/o/i/d;->e:Le/b/a/a/c;

    .line 7
    invoke-interface {v0}, Le/b/a/a/c;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "sendHandler"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
