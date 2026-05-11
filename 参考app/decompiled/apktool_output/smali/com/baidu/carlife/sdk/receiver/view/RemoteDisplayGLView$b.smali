.class public final Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "event"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v2

    check-cast v2, Le/b/a/a/p/h;

    .line 1
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Le/b/a/a/o/c;->p()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    iget-object v2, v2, Le/b/a/a/p/h;->L:Le/b/a/a/p/n/a;

    if-eqz v2, :cond_7

    .line 2
    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v2, Le/b/a/a/p/n/a;->j:I

    const/4 v3, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v1, v4, :cond_4

    .line 3
    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v7, 0x6800e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0xc

    invoke-virtual {v1, v3, v7, v8}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    iget-object v3, v1, Le/b/a/a/o/h/a;->i:[B

    .line 5
    invoke-virtual {v1}, Le/b/a/a/o/h/a;->h()I

    move-result v7

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-static {v8, v3, v7, v5}, Ld/b/k/m$i;->M(I[BII)V

    add-int/lit8 v5, v7, 0x4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-lez v8, :cond_3

    :goto_0
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iget-object v11, v2, Le/b/a/a/p/n/a;->l:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v0, v6, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v6, v2, Le/b/a/a/p/n/a;->l:Landroid/view/MotionEvent$PointerCoords;

    iget v11, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v11, v11

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v6, v6

    iget-object v12, v2, Le/b/a/a/p/n/a;->k:Landroid/graphics/Point;

    .line 7
    iget v13, v2, Le/b/a/a/p/n/a;->f:I

    if-eqz v13, :cond_1

    iget v14, v2, Le/b/a/a/p/n/a;->g:I

    if-eqz v14, :cond_1

    iget v15, v2, Le/b/a/a/p/n/a;->h:I

    if-eqz v15, :cond_1

    iget v4, v2, Le/b/a/a/p/n/a;->i:I

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    mul-int v11, v11, v13

    div-int/2addr v11, v15

    iput v11, v12, Landroid/graphics/Point;->x:I

    mul-int v6, v6, v14

    div-int/2addr v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    iput v11, v12, Landroid/graphics/Point;->x:I

    :goto_2
    iput v6, v12, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    .line 8
    invoke-static {v10, v3, v5, v4}, Ld/b/k/m$i;->M(I[BII)V

    add-int/2addr v5, v4

    iget-object v4, v2, Le/b/a/a/p/n/a;->k:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v6, 0x2

    invoke-static {v4, v3, v5, v6}, Ld/b/k/m$i;->M(I[BII)V

    add-int/2addr v5, v6

    iget-object v4, v2, Le/b/a/a/p/n/a;->k:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3, v5, v6}, Ld/b/k/m$i;->M(I[BII)V

    add-int/2addr v5, v6

    if-lt v9, v8, :cond_2

    goto :goto_3

    :cond_2
    move v6, v9

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    sub-int/2addr v5, v7

    .line 9
    invoke-virtual {v1, v5}, Le/b/a/a/o/h/a;->z(I)V

    iget-object v0, v2, Le/b/a/a/p/n/a;->e:Le/b/a/a/c;

    invoke-interface {v0, v1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_5

    .line 10
    :cond_4
    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v4, 0x68001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4, v6, v5}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setAction(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Le/b/a/a/p/n/a;->c(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setX(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Le/b/a/a/p/n/a;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setY(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v3

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Le/b/a/a/p/n/a;->c(I)I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 12
    :goto_4
    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointerx(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v3

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v5, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Le/b/a/a/p/n/a;->d(I)I

    move-result v6

    .line 14
    :cond_6
    invoke-virtual {v3, v6}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointery(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v2, Le/b/a/a/p/n/a;->e:Le/b/a/a/c;

    invoke-interface {v0, v1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 15
    throw v0

    :cond_8
    :goto_5
    const/4 v0, 0x1

    return v0
.end method
