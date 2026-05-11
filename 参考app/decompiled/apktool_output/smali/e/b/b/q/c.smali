.class public final Le/b/b/q/c;
.super Le/b/a/a/d;
.source ""


# instance fields
.field public final g:I


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le/b/a/a/d;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Le/b/b/q/c;->g:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Le/b/b/q/c;->g:I

    return v0
.end method

.method public z(II)V
    .locals 0

    return-void
.end method
