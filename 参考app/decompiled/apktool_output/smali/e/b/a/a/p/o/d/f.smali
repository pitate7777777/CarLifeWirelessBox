.class public final Le/b/a/a/p/o/d/f;
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
.field public final synthetic e:Le/b/a/a/p/o/d/e;

.field public final synthetic f:Le/b/a/a/o/i/f/a;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/e;Le/b/a/a/o/i/f/a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/f;->e:Le/b/a/a/p/o/d/e;

    iput-object p2, p0, Le/b/a/a/p/o/d/f;->f:Le/b/a/a/o/i/f/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/d/f;->e:Le/b/a/a/p/o/d/e;

    iget-object v1, p0, Le/b/a/a/p/o/d/f;->f:Le/b/a/a/o/i/f/a;

    .line 2
    invoke-virtual {v0, v1}, Le/b/a/a/p/o/d/e;->c(Le/b/a/a/o/i/f/a;)V

    .line 3
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
