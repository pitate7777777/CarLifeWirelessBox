.class public final Le/b/a/a/p/o/d/e$b;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/e;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Le/b/a/a/p/o/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/d/e;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/e;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/e$b;->e:Le/b/a/a/p/o/d/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/b/a/a/p/o/d/d;

    iget-object v1, p0, Le/b/a/a/p/o/d/e$b;->e:Le/b/a/a/p/o/d/e;

    .line 2
    iget-object v2, v1, Le/b/a/a/p/o/d/e;->a:Le/b/a/a/c;

    .line 3
    invoke-direct {v0, v2, v1}, Le/b/a/a/p/o/d/d;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V

    return-object v0
.end method
