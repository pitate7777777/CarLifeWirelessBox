.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method


# virtual methods
.method public D(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v11, :cond_0

    .line 1
    sget v1, Le/c/a/a/a;->mtrl_fab_transformation_sheet_expand_spec:I

    goto :goto_0

    :cond_0
    sget v1, Le/c/a/a/a;->mtrl_fab_transformation_sheet_collapse_spec:I

    :goto_0
    new-instance v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;

    invoke-direct {v12}, Lcom/google/android/material/transformation/FabTransformationBehavior$b;-><init>()V

    invoke-static {v0, v1}, Le/c/a/a/l/g;->b(Landroid/content/Context;I)Le/c/a/a/l/g;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    new-instance v0, Le/c/a/a/l/i;

    const/16 v1, 0x11

    const/4 v13, 0x0

    invoke-direct {v0, v1, v13, v13}, Le/c/a/a/l/i;-><init>(IFF)V

    iput-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    if-eqz v11, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->L(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    iget-object v7, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v16, v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->M(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 3
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    invoke-virtual {v8, v9, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result v2

    iget-object v3, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    invoke-virtual {v8, v9, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result v3

    invoke-virtual {v8, v2, v3, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Le/c/a/a/l/h;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Le/c/a/a/l/h;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v13, v7, [F

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_1
    const/16 v17, 0x0

    aput v2, v13, v17

    invoke-static {v9, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v7, [F

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_2
    aput v3, v13, v17

    invoke-static {v9, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v5, v2}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v4, v3}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    instance-of v2, v10, Le/c/a/a/u/c;

    if-eqz v2, :cond_8

    instance-of v3, v9, Landroid/widget/ImageView;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v10

    check-cast v3, Le/c/a/a/u/c;

    move-object v4, v9

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xff

    if-eqz v11, :cond_7

    if-nez p4, :cond_6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    sget-object v5, Le/c/a/a/l/d;->b:Landroid/util/Property;

    new-array v6, v7, [I

    aput v17, v6, v17

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_3

    :cond_7
    sget-object v6, Le/c/a/a/l/d;->b:Landroid/util/Property;

    new-array v7, v7, [I

    aput v5, v7, v17

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_3
    new-instance v6, Le/c/a/a/l0/a;

    invoke-direct {v6, v8, v10}, Le/c/a/a/l0/a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string v7, "iconFade"

    invoke-virtual {v6, v7}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Le/c/a/a/l0/b;

    invoke-direct {v5, v8, v3, v4}, Le/c/a/a/l0/b;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/a/u/c;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    move-object/from16 v21, v12

    move-object v7, v14

    move-object v8, v15

    goto/16 :goto_9

    .line 5
    :cond_9
    move-object v2, v10

    check-cast v2, Le/c/a/a/u/c;

    iget-object v3, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    .line 6
    iget-object v4, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v5, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {v8, v9, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v7, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 8
    invoke-virtual {v8, v10, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v8, v9, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result v3

    neg-float v3, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    .line 9
    iget-object v4, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    .line 10
    iget-object v5, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v8, v9, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v7, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v13, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v5, v7, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 12
    invoke-virtual {v8, v10, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v8, v9, v10, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result v4

    neg-float v4, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    .line 13
    move-object v5, v9

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g(Landroid/graphics/Rect;)Z

    iget-object v5, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string v7, "expansion"

    invoke-virtual {v6, v7}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object v6

    move-object v7, v12

    if-eqz v11, :cond_10

    if-nez p4, :cond_a

    new-instance v12, Le/c/a/a/u/c$e;

    invoke-direct {v12, v3, v4, v5}, Le/c/a/a/u/c$e;-><init>(FFF)V

    invoke-interface {v2, v12}, Le/c/a/a/u/c;->setRevealInfo(Le/c/a/a/u/c$e;)V

    :cond_a
    if-eqz p4, :cond_b

    invoke-interface {v2}, Le/c/a/a/u/c;->getRevealInfo()Le/c/a/a/u/c$e;

    move-result-object v5

    iget v5, v5, Le/c/a/a/u/c$e;->c:F

    :cond_b
    const/4 v12, 0x0

    .line 14
    invoke-static {v3, v4, v12, v12}, Ld/b/k/m$i;->J(FFFF)F

    move-result v13

    invoke-static {v3, v4, v0, v12}, Ld/b/k/m$i;->J(FFFF)F

    move-result v16

    invoke-static {v3, v4, v0, v1}, Ld/b/k/m$i;->J(FFFF)F

    move-result v0

    invoke-static {v3, v4, v12, v1}, Ld/b/k/m$i;->J(FFFF)F

    move-result v1

    cmpl-float v12, v13, v16

    if-lez v12, :cond_c

    cmpl-float v12, v13, v0

    if-lez v12, :cond_c

    cmpl-float v12, v13, v1

    if-lez v12, :cond_c

    goto :goto_5

    :cond_c
    cmpl-float v12, v16, v0

    if-lez v12, :cond_d

    cmpl-float v12, v16, v1

    if-lez v12, :cond_d

    move/from16 v13, v16

    goto :goto_5

    :cond_d
    cmpl-float v12, v0, v1

    if-lez v12, :cond_e

    move v13, v0

    goto :goto_5

    :cond_e
    move v13, v1

    .line 15
    :goto_5
    invoke-static {v2, v3, v4, v13}, Ld/b/k/m$i;->C(Le/c/a/a/u/c;FFF)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Le/c/a/a/l0/c;

    invoke-direct {v1, v8, v2}, Le/c/a/a/l0/c;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/a/u/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-wide v12, v6, Le/c/a/a/l/h;->a:J

    float-to-int v1, v3

    float-to-int v3, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v12, v8

    if-lez v4, :cond_f

    .line 17
    invoke-static {v10, v1, v3, v5, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v1, v6

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    goto/16 :goto_8

    .line 18
    :cond_10
    invoke-interface {v2}, Le/c/a/a/u/c;->getRevealInfo()Le/c/a/a/u/c$e;

    move-result-object v0

    iget v0, v0, Le/c/a/a/u/c$e;->c:F

    invoke-static {v2, v3, v4, v5}, Ld/b/k/m$i;->C(Le/c/a/a/u/c;FFF)Landroid/animation/Animator;

    move-result-object v1

    .line 19
    iget-wide v8, v6, Le/c/a/a/l/h;->a:J

    float-to-int v3, v3

    float-to-int v4, v4

    const-wide/16 v12, 0x0

    cmp-long v16, v8, v12

    if-lez v16, :cond_11

    .line 20
    invoke-static {v10, v3, v4, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_11
    iget-wide v8, v6, Le/c/a/a/l/h;->a:J

    .line 22
    iget-wide v12, v6, Le/c/a/a/l/h;->b:J

    .line 23
    iget-object v0, v7, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    move-object/from16 v16, v1

    .line 24
    iget-object v1, v0, Le/c/a/a/l/g;->a:Ld/e/h;

    .line 25
    iget v1, v1, Ld/e/h;->g:I

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v1, :cond_12

    move/from16 v18, v1

    .line 26
    iget-object v1, v0, Le/c/a/a/l/g;->a:Ld/e/h;

    invoke-virtual {v1, v11}, Ld/e/h;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/l/h;

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    .line 27
    iget-wide v14, v1, Le/c/a/a/l/h;->a:J

    move-object/from16 v23, v0

    .line 28
    iget-wide v0, v1, Le/c/a/a/l/h;->b:J

    add-long/2addr v14, v0

    .line 29
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    goto :goto_6

    :cond_12
    move-object/from16 v19, v14

    move-object/from16 v22, v15

    add-long/2addr v8, v12

    cmp-long v0, v8, v6

    if-gez v0, :cond_13

    .line 30
    invoke-static {v10, v3, v4, v5, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v7, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    move-object/from16 v7, v19

    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    .line 31
    :goto_8
    invoke-virtual {v1, v0}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Le/c/a/a/u/a;

    invoke-direct {v0, v2}, Le/c/a/a/u/a;-><init>(Le/c/a/a/u/c;)V

    move-object/from16 v8, v22

    .line 33
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, v21

    move-object v6, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v21

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->J(Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v7}, Ld/b/k/m$i;->U0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v4, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_14

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    return-object v0
.end method

.method public final E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            ")",
            "Landroid/util/Pair<",
            "Le/c/a/a/l/h;",
            "Le/c/a/a/l/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_2

    :cond_1
    if-nez p3, :cond_3

    if-lez p1, :cond_3

    :cond_2
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p2, "translationXCurveUpwards"

    invoke-virtual {p1, p2}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p1

    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "translationYCurveUpwards"

    goto :goto_1

    :cond_3
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p2, "translationXCurveDownwards"

    invoke-virtual {p1, p2}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p1

    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "translationYCurveDownwards"

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p2, "translationXLinear"

    invoke-virtual {p1, p2}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p1

    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "translationYLinear"

    :goto_1
    invoke-virtual {p2, p3}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p2

    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final F(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 2
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    iget p2, p3, Le/c/a/a/l/i;->a:I

    and-int/lit8 p2, p2, 0x7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    iget p2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    :goto_1
    iget p2, p3, Le/c/a/a/l/i;->b:F

    add-float/2addr p1, p2

    return p1
.end method

.method public final G(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 2
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    iget p2, p3, Le/c/a/a/l/i;->a:I

    and-int/lit8 p2, p2, 0x70

    const/16 v2, 0x10

    if-eq p2, v2, :cond_2

    const/16 v2, 0x30

    if-eq p2, v2, :cond_1

    const/16 v2, 0x50

    if-eq p2, v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    :goto_1
    iget p2, p3, Le/c/a/a/l/i;->c:F

    add-float/2addr p1, p2

    return p1
.end method

.method public final H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/c/a/a/l/h;FF)F
    .locals 8

    .line 1
    iget-wide v0, p2, Le/c/a/a/l/h;->a:J

    .line 2
    iget-wide v2, p2, Le/c/a/a/l/h;->b:J

    .line 3
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string v4, "expansion"

    invoke-virtual {p1, v4}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p1

    .line 4
    iget-wide v4, p1, Le/c/a/a/l/h;->a:J

    .line 5
    iget-wide v6, p1, Le/c/a/a/l/h;->b:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    long-to-float p1, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 6
    invoke-virtual {p2}, Le/c/a/a/l/h;->b()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p3, p4, p1}, Le/c/a/a/l/a;->a(FFF)F

    move-result p1

    return p1
.end method

.method public final I(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public final J(Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Le/c/a/a/u/c;

    .line 1
    sget v0, Le/c/a/a/f;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Le/c/a/a/l0/e;

    if-nez v0, :cond_2

    instance-of v0, p1, Le/c/a/a/l0/d;

    if-eqz v0, :cond_3

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    .line 2
    sget-object p2, Le/c/a/a/l/c;->a:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    sget-object p2, Le/c/a/a/l/c;->a:Landroid/util/Property;

    new-array p3, v2, [F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p2, Le/c/a/a/l/c;->a:Landroid/util/Property;

    new-array p3, v2, [F

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_1
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "contentFade"

    invoke-virtual {p2, p3}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final K(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Le/c/a/a/u/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Le/c/a/a/u/c;

    .line 1
    invoke-static {p1}, Ld/h/l/p;->n(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const v0, 0xffffff

    and-int/2addr v0, p1

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    .line 2
    invoke-interface {p2, p1}, Le/c/a/a/u/c;->setCircularRevealScrimColor(I)V

    :cond_2
    sget-object p1, Le/c/a/a/u/c$d;->a:Landroid/util/Property;

    new-array p3, v2, [I

    aput v0, p3, v1

    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p3, Le/c/a/a/u/c$d;->a:Landroid/util/Property;

    new-array p4, v2, [I

    aput p1, p4, v1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    :goto_1
    sget-object p2, Le/c/a/a/l/b;->a:Le/c/a/a/l/b;

    .line 4
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "color"

    invoke-virtual {p2, p3}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final L(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ld/h/l/p;->q(Landroid/view/View;)F

    move-result v0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p3, v0

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v1, [F

    const/4 v0, 0x0

    aput v0, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v1, [F

    neg-float v0, v0

    aput v0, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/c/a/a/l/g;

    const-string p3, "elevation"

    invoke-virtual {p2, p3}, Le/c/a/a/l/g;->d(Ljava/lang/String;)Le/c/a/a/l/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final M(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result v0

    iget-object v1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/c/a/a/l/i;

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/c/a/a/l/i;)F

    move-result p1

    invoke-virtual {p0, v0, p1, p3, p5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Le/c/a/a/l/h;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Le/c/a/a/l/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p3, v0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    neg-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p4, v4, [F

    const/4 v5, 0x0

    aput v5, p4, v3

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v5, v4, v3

    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    neg-float v0, v0

    neg-float p1, p1

    .line 1
    invoke-virtual {p0, p5, v2, v0, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/c/a/a/l/h;FF)F

    move-result v0

    invoke-virtual {p0, p5, v1, p1, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/c/a/a/l/h;FF)F

    move-result p1

    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    invoke-virtual {v3, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p5, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p5, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p7, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p4, v4, [F

    neg-float p5, v0

    aput p5, p4, v3

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array p5, v4, [F

    neg-float p1, p1

    aput p1, p5, v3

    invoke-static {p2, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    :goto_0
    invoke-virtual {v2, p3}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v1, p4}, Le/c/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final N(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 1

    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    :cond_0
    return-void
.end method
