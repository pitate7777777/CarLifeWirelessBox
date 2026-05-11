.class public Le/c/a/a/z/e$a;
.super Le/c/a/a/l/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/z/e;->a(Le/c/a/a/l/g;FFF)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/c/a/a/z/e;


# direct methods
.method public constructor <init>(Le/c/a/a/z/e;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/z/e$a;->d:Le/c/a/a/z/e;

    invoke-direct {p0}, Le/c/a/a/l/f;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    .line 1
    iget-object v0, p0, Le/c/a/a/z/e$a;->d:Le/c/a/a/z/e;

    .line 2
    iput p1, v0, Le/c/a/a/z/e;->o:F

    .line 3
    iget-object v0, p0, Le/c/a/a/l/f;->a:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Le/c/a/a/l/f;->b:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x9

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Le/c/a/a/l/f;->b:[F

    aget v0, p3, p2

    iget-object v1, p0, Le/c/a/a/l/f;->a:[F

    aget v2, v1, p2

    sub-float/2addr v0, v2

    aget v1, v1, p2

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/c/a/a/l/f;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Le/c/a/a/l/f;->b:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object p1, p0, Le/c/a/a/l/f;->c:Landroid/graphics/Matrix;

    return-object p1
.end method
