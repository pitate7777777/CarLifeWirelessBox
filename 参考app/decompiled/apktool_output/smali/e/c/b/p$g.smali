.class public Le/c/b/p$g;
.super Le/c/b/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Le/c/b/x;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/k<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/c/b/x;Ljava/lang/Object;Le/c/b/x;Le/c/b/p$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Le/c/b/x;",
            "Le/c/b/p$f;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/k;-><init>()V

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p4, Le/c/b/p$f;->f:Le/c/b/h0;

    .line 2
    sget-object p2, Le/c/b/h0;->p:Le/c/b/h0;

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
