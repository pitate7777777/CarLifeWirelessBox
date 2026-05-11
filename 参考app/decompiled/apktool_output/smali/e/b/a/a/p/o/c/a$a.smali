.class public final Le/b/a/a/p/o/c/a$a;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/c/a;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/b<",
        "Le/b/a/a/o/i/f/b;",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/c/a;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/c/a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/c/a$a;->e:Le/b/a/a/p/o/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Le/b/a/a/o/i/f/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/o/c/a$a;->e:Le/b/a/a/p/o/c/a;

    .line 2
    iput-object p1, v0, Le/b/a/a/p/o/c/a;->b:Le/b/a/a/o/i/f/b;

    .line 3
    invoke-virtual {v0}, Le/b/a/a/o/i/e;->c()V

    .line 4
    sget-object p1, Lf/h;->a:Lf/h;

    return-object p1
.end method
