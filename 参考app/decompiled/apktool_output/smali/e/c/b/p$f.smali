.class public final Le/c/b/p$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/b/n$a<",
        "Le/c/b/p$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:Le/c/b/h0;

.field public final g:Z


# direct methods
.method public constructor <init>(Le/c/b/r$d;ILe/c/b/h0;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/r$d<",
            "*>;I",
            "Le/c/b/h0;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le/c/b/p$f;->e:I

    iput-object p3, p0, Le/c/b/p$f;->f:Le/c/b/h0;

    iput-boolean p4, p0, Le/c/b/p$f;->g:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Le/c/b/p$f;->g:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/c/b/p$f;

    .line 1
    iget v0, p0, Le/c/b/p$f;->e:I

    iget p1, p1, Le/c/b/p$f;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public f()Le/c/b/h0;
    .locals 1

    iget-object v0, p0, Le/c/b/p$f;->f:Le/c/b/h0;

    return-object v0
.end method

.method public l()Le/c/b/i0;
    .locals 1

    iget-object v0, p0, Le/c/b/p$f;->f:Le/c/b/h0;

    .line 1
    iget-object v0, v0, Le/c/b/h0;->e:Le/c/b/i0;

    return-object v0
.end method

.method public o(Le/c/b/x$a;Le/c/b/x;)Le/c/b/x$a;
    .locals 0

    check-cast p1, Le/c/b/p$b;

    check-cast p2, Le/c/b/p;

    invoke-virtual {p1, p2}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p1

    return-object p1
.end method
