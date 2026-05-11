.class public Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$b;,
        Lcom/google/android/material/timepicker/TimePickerView$d;,
        Lcom/google/android/material/timepicker/TimePickerView$c;
    }
.end annotation


# instance fields
.field public final A:Landroid/view/View$OnClickListener;

.field public B:Lcom/google/android/material/timepicker/TimePickerView$c;

.field public C:Lcom/google/android/material/timepicker/TimePickerView$d;

.field public D:Lcom/google/android/material/timepicker/TimePickerView$b;

.field public final x:Lcom/google/android/material/chip/Chip;

.field public final y:Lcom/google/android/material/chip/Chip;

.field public final z:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->A:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Le/c/a/a/h;->material_timepicker:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Le/c/a/a/f;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    sget p1, Le/c/a/a/f;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance p2, Le/c/a/a/k0/d;

    invoke-direct {p2, p0}, Le/c/a/a/k0/d;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 2
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget p1, Le/c/a/a/f;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Lcom/google/android/material/chip/Chip;

    sget p1, Le/c/a/a/f;->material_hour_tv:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/chip/Chip;

    sget p1, Le/c/a/a/f;->material_clock_hand:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockHandView;

    .line 4
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Le/c/a/a/k0/e;

    invoke-direct {v0, p0}, Le/c/a/a/k0/e;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p2, Le/c/a/a/k0/f;

    invoke-direct {p2, p0, p1}, Le/c/a/a/k0/f;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Lcom/google/android/material/chip/Chip;

    sget p2, Le/c/a/a/f;->selection_type:I

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/chip/Chip;

    sget p2, Le/c/a/a/f;->selection_type:I

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Lcom/google/android/material/chip/Chip;

    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/chip/Chip;

    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ld/f/c/d;

    invoke-direct {v0}, Ld/f/c/d;-><init>()V

    invoke-virtual {v0, p0}, Ld/f/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {p0}, Ld/h/l/p;->v(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    sget v3, Le/c/a/a/f;->material_clock_display:I

    .line 1
    iget-object v4, v0, Ld/f/c/d;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ld/f/c/d;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/f/c/d$a;

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->s:I

    iput v4, v1, Ld/f/c/d$b;->t:I

    iput v4, v1, Ld/f/c/d$b;->H:I

    iput v4, v1, Ld/f/c/d$b;->N:I

    goto :goto_2

    :pswitch_1
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->q:I

    iput v4, v1, Ld/f/c/d$b;->r:I

    iput v4, v1, Ld/f/c/d$b;->I:I

    iput v4, v1, Ld/f/c/d$b;->O:I

    goto :goto_2

    :pswitch_2
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->p:I

    goto :goto_2

    :pswitch_3
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->n:I

    iput v4, v1, Ld/f/c/d$b;->o:I

    iput v4, v1, Ld/f/c/d$b;->G:I

    iput v4, v1, Ld/f/c/d$b;->M:I

    goto :goto_2

    :pswitch_4
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->m:I

    iput v4, v1, Ld/f/c/d$b;->l:I

    iput v4, v1, Ld/f/c/d$b;->F:I

    iput v4, v1, Ld/f/c/d$b;->K:I

    goto :goto_2

    :pswitch_5
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->k:I

    iput v4, v1, Ld/f/c/d$b;->j:I

    iput v4, v1, Ld/f/c/d$b;->E:I

    iput v4, v1, Ld/f/c/d$b;->L:I

    goto :goto_2

    :pswitch_6
    iget-object v1, v3, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v4, v1, Ld/f/c/d$b;->i:I

    iput v4, v1, Ld/f/c/d$b;->h:I

    iput v4, v1, Ld/f/c/d$b;->D:I

    iput v4, v1, Ld/f/c/d$b;->J:I

    .line 2
    :cond_2
    :goto_2
    invoke-virtual {v0, p0, v2}, Ld/f/c/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ld/f/c/d;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->k()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->k()V

    :cond_0
    return-void
.end method
