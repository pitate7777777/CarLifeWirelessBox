.class public final Le/b/a/a/p/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/p/g;
.implements Le/b/a/a/m;


# instance fields
.field public final e:Le/b/a/a/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Landroid/graphics/Point;

.field public final l:Landroid/view/MotionEvent$PointerCoords;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/n/a;->e:Le/b/a/a/c;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Le/b/a/a/p/n/a;->k:Landroid/graphics/Point;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput-object v0, p0, Le/b/a/a/p/n/a;->l:Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {p1, p0}, Le/b/a/a/c;->F0(Le/b/a/a/m;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Le/b/a/a/p/n/a;->f:I

    iput p2, p0, Le/b/a/a/p/n/a;->g:I

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Le/b/a/a/p/n/a;->e:Le/b/a/a/c;

    const-string v1, "MULTI_TOUCH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/b/a/a/c;->o1(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Le/b/a/a/p/n/a;->j:I

    return-void
.end method

.method public final c(I)I
    .locals 3

    iget v0, p0, Le/b/a/a/p/n/a;->f:I

    if-eqz v0, :cond_1

    iget v1, p0, Le/b/a/a/p/n/a;->g:I

    if-eqz v1, :cond_1

    iget v1, p0, Le/b/a/a/p/n/a;->h:I

    if-eqz v1, :cond_1

    iget v2, p0, Le/b/a/a/p/n/a;->i:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    div-int/2addr p1, v1

    :cond_1
    :goto_0
    return p1
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Le/b/a/a/p/n/a;->f:I

    if-eqz v0, :cond_1

    iget v0, p0, Le/b/a/a/p/n/a;->g:I

    if-eqz v0, :cond_1

    iget v1, p0, Le/b/a/a/p/n/a;->h:I

    if-eqz v1, :cond_1

    iget v1, p0, Le/b/a/a/p/n/a;->i:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    div-int/2addr p1, v1

    :cond_1
    :goto_0
    return p1
.end method
