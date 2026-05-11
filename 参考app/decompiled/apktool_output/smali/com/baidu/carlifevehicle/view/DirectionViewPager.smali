.class public Lcom/baidu/carlifevehicle/view/DirectionViewPager;
.super Ld/v/a/b;
.source ""


# instance fields
.field public g0:F

.field public h0:Z

.field public i0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/v/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->g0:F

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->g0:F

    sub-float v3, v0, v2

    const-string v4, "MultiViewPager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    iput-boolean v1, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->h0:Z

    iput-boolean v6, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->i0:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "toRight="

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->h0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",toLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->i0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iput-boolean v1, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->i0:Z

    iput-boolean v6, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->h0:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "toLeft="

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->i0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",toRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->h0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->i0:Z

    iput-boolean v6, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->h0:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/carlifevehicle/view/DirectionViewPager;->g0:F

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
