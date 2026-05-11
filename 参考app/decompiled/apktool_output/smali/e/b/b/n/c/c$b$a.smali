.class public final Le/b/b/n/c/c$b$a;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/n/c/c$b;->l(Le/b/b/n/c/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/b/n/c/c$b;

.field public final synthetic f:Le/b/b/n/c/d/b;


# direct methods
.method public constructor <init>(Le/b/b/n/c/c$b;Le/b/b/n/c/d/b;)V
    .locals 0

    iput-object p1, p0, Le/b/b/n/c/c$b$a;->e:Le/b/b/n/c/c$b;

    iput-object p2, p0, Le/b/b/n/c/c$b$a;->f:Le/b/b/n/c/d/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/b/n/c/c$b$a;->e:Le/b/b/n/c/c$b;

    .line 2
    iget-object v0, v0, Le/b/b/n/c/c$b;->e:Le/b/b/n/c/c$a;

    .line 3
    iget-object v1, p0, Le/b/b/n/c/c$b$a;->f:Le/b/b/n/c/d/b;

    invoke-interface {v0, v1}, Le/b/b/n/c/c$a;->l(Le/b/b/n/c/d/b;)V

    .line 4
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
