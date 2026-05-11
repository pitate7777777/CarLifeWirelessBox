.class public Ld/h/m/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Ld/h/m/a;


# direct methods
.method public constructor <init>(Ld/h/m/a;)V
    .locals 0

    iput-object p1, p0, Ld/h/m/a$b;->e:Ld/h/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    iget-boolean v2, v1, Ld/h/m/a;->s:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v1, Ld/h/m/a;->q:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iput-boolean v4, v1, Ld/h/m/a;->q:Z

    iget-object v1, v1, Ld/h/m/a;->e:Ld/h/m/a$a;

    if-eqz v1, :cond_1

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Ld/h/m/a$a;->e:J

    const-wide/16 v7, -0x1

    iput-wide v7, v1, Ld/h/m/a$a;->i:J

    iput-wide v5, v1, Ld/h/m/a$a;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Ld/h/m/a$a;->j:F

    iput v4, v1, Ld/h/m/a$a;->g:I

    iput v4, v1, Ld/h/m/a$a;->h:I

    goto :goto_0

    :cond_1
    throw v3

    .line 2
    :cond_2
    :goto_0
    iget-object v1, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    iget-object v1, v1, Ld/h/m/a;->e:Ld/h/m/a$a;

    .line 3
    iget-wide v5, v1, Ld/h/m/a$a;->i:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Ld/h/m/a$a;->i:J

    iget v2, v1, Ld/h/m/a$a;->k:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    cmp-long v2, v5, v9

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_8

    .line 4
    iget-object v2, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    invoke-virtual {v2}, Ld/h/m/a;->e()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    iget-boolean v5, v2, Ld/h/m/a;->r:Z

    if-eqz v5, :cond_6

    iput-boolean v4, v2, Ld/h/m/a;->r:Z

    if-eqz v2, :cond_5

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v2, v2, Ld/h/m/a;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :cond_5
    throw v3

    .line 6
    :cond_6
    :goto_2
    iget-wide v2, v1, Ld/h/m/a$a;->f:J

    cmp-long v4, v2, v7

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld/h/m/a$a;->a(J)F

    move-result v4

    const/high16 v5, -0x3f800000    # -4.0f

    mul-float v5, v5, v4

    mul-float v5, v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v4, v4, v6

    add-float/2addr v4, v5

    iget-wide v5, v1, Ld/h/m/a$a;->f:J

    sub-long v5, v2, v5

    iput-wide v2, v1, Ld/h/m/a$a;->f:J

    long-to-float v2, v5

    mul-float v2, v2, v4

    iget v3, v1, Ld/h/m/a$a;->c:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v1, Ld/h/m/a$a;->g:I

    iget v3, v1, Ld/h/m/a$a;->d:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Ld/h/m/a$a;->h:I

    .line 7
    iget-object v1, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    check-cast v1, Ld/h/m/c;

    .line 8
    iget-object v1, v1, Ld/h/m/c;->v:Landroid/widget/ListView;

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 10
    iget-object v1, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    iget-object v1, v1, Ld/h/m/a;->g:Landroid/view/View;

    invoke-static {v1, v0}, Ld/h/l/p;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_8
    :goto_3
    iget-object v1, v0, Ld/h/m/a$b;->e:Ld/h/m/a;

    iput-boolean v4, v1, Ld/h/m/a;->s:Z

    return-void
.end method
