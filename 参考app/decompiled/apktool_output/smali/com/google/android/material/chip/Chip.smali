.class public Lcom/google/android/material/chip/Chip;
.super Ld/b/q/g;
.source ""

# interfaces
.implements Le/c/a/a/t/b$a;
.implements Le/c/a/a/f0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$b;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final x:I

.field public static final y:Landroid/graphics/Rect;

.field public static final z:[I


# instance fields
.field public h:Le/c/a/a/t/b;

.field public i:Landroid/graphics/drawable/InsetDrawable;

.field public j:Landroid/graphics/drawable/RippleDrawable;

.field public k:Landroid/view/View$OnClickListener;

.field public l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public final t:Lcom/google/android/material/chip/Chip$b;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/RectF;

.field public final w:Le/c/a/a/c0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Le/c/a/a/j;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->x:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->y:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/chip/Chip;->z:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/chip/Chip;->A:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    sget v6, Le/c/a/a/b;->chipStyle:I

    .line 1
    sget v0, Lcom/google/android/material/chip/Chip;->x:I

    invoke-static {p1, p2, v6, v0}, Le/c/a/a/j0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v6}, Ld/b/q/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    new-instance p1, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->w:Le/c/a/a/c0/d;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const v7, 0x800013

    const/4 v8, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    .line 2
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip"

    if-eqz v1, :cond_1

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "drawableLeft"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v1, "drawableStart"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "drawableEnd"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_14

    const-string v1, "drawableRight"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "singleLine"

    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "lines"

    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_12

    const-string v1, "minLines"

    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_12

    const-string v1, "maxLines"

    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_12

    const-string v1, "gravity"

    invoke-interface {p2, v0, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_2

    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_2
    :goto_0
    sget v4, Lcom/google/android/material/chip/Chip;->x:I

    .line 4
    new-instance v9, Le/c/a/a/t/b;

    invoke-direct {v9, p1, p2, v6, v4}, Le/c/a/a/t/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iget-object v0, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget-object v2, Le/c/a/a/k;->Chip:[I

    const/4 v10, 0x0

    new-array v5, v10, [I

    move-object v1, p2

    move v3, v6

    invoke-static/range {v0 .. v5}, Le/c/a/a/a0/k;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Le/c/a/a/k;->Chip_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, v9, Le/c/a/a/t/b;->L0:Z

    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v2, Le/c/a/a/k;->Chip_chipSurfaceColor:I

    invoke-static {v1, v0, v2}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 6
    iget-object v2, v9, Le/c/a/a/t/b;->C:Landroid/content/res/ColorStateList;

    if-eq v2, v1, :cond_3

    iput-object v1, v9, Le/c/a/a/t/b;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->onStateChange([I)Z

    .line 7
    :cond_3
    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v2, Le/c/a/a/k;->Chip_chipBackgroundColor:I

    invoke-static {v1, v0, v2}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->P(Landroid/content/res/ColorStateList;)V

    sget v1, Le/c/a/a/k;->Chip_chipMinHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->W(F)V

    sget v1, Le/c/a/a/k;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Le/c/a/a/k;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->Q(F)V

    :cond_4
    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_chipStrokeColor:I

    invoke-static {v1, v0, v3}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->Y(Landroid/content/res/ColorStateList;)V

    sget v1, Le/c/a/a/k;->Chip_chipStrokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->Z(F)V

    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_rippleColor:I

    invoke-static {v1, v0, v3}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->j0(Landroid/content/res/ColorStateList;)V

    sget v1, Le/c/a/a/k;->Chip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->k0(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_android_textAppearance:I

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v4, Le/c/a/a/c0/b;

    invoke-direct {v4, v1, v3}, Le/c/a/a/c0/b;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 9
    :goto_1
    sget v1, Le/c/a/a/k;->Chip_android_textSize:I

    iget v3, v4, Le/c/a/a/c0/b;->k:F

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v4, Le/c/a/a/c0/b;->k:F

    invoke-virtual {v9, v4}, Le/c/a/a/t/b;->l0(Le/c/a/a/c0/b;)V

    sget v1, Le/c/a/a/k;->Chip_android_ellipsize:I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v8, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_7
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_8
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 10
    :goto_2
    iput-object v1, v9, Le/c/a/a/t/b;->I0:Landroid/text/TextUtils$TruncateAt;

    .line 11
    :goto_3
    sget v1, Le/c/a/a/k;->Chip_chipIconVisible:I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->V(Z)V

    const-string v1, "http://schemas.android.com/apk/res-auto"

    if-eqz p2, :cond_9

    const-string v3, "chipIconEnabled"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "chipIconVisible"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    sget v3, Le/c/a/a/k;->Chip_chipIconEnabled:I

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->V(Z)V

    :cond_9
    iget-object v3, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v4, Le/c/a/a/k;->Chip_chipIcon:I

    invoke-static {v3, v0, v4}, Ld/b/k/m$i;->Z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->S(Landroid/graphics/drawable/Drawable;)V

    sget v3, Le/c/a/a/k;->Chip_chipIconTint:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v4, Le/c/a/a/k;->Chip_chipIconTint:I

    invoke-static {v3, v0, v4}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->U(Landroid/content/res/ColorStateList;)V

    :cond_a
    sget v3, Le/c/a/a/k;->Chip_chipIconSize:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->T(F)V

    sget v3, Le/c/a/a/k;->Chip_closeIconVisible:I

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->g0(Z)V

    if-eqz p2, :cond_b

    const-string v3, "closeIconEnabled"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "closeIconVisible"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    sget v3, Le/c/a/a/k;->Chip_closeIconEnabled:I

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->g0(Z)V

    :cond_b
    iget-object v3, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v4, Le/c/a/a/k;->Chip_closeIcon:I

    invoke-static {v3, v0, v4}, Ld/b/k/m$i;->Z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v4, Le/c/a/a/k;->Chip_closeIconTint:I

    invoke-static {v3, v0, v4}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->f0(Landroid/content/res/ColorStateList;)V

    sget v3, Le/c/a/a/k;->Chip_closeIconSize:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->c0(F)V

    sget v3, Le/c/a/a/k;->Chip_android_checkable:I

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->L(Z)V

    sget v3, Le/c/a/a/k;->Chip_checkedIconVisible:I

    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v9, v3}, Le/c/a/a/t/b;->O(Z)V

    if-eqz p2, :cond_c

    const-string v3, "checkedIconEnabled"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v3, "checkedIconVisible"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    sget v1, Le/c/a/a/k;->Chip_checkedIconEnabled:I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->O(Z)V

    :cond_c
    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_checkedIcon:I

    invoke-static {v1, v0, v3}, Ld/b/k/m$i;->Z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->M(Landroid/graphics/drawable/Drawable;)V

    sget v1, Le/c/a/a/k;->Chip_checkedIconTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_checkedIconTint:I

    invoke-static {v1, v0, v3}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->N(Landroid/content/res/ColorStateList;)V

    :cond_d
    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_showMotionSpec:I

    invoke-static {v1, v0, v3}, Le/c/a/a/l/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le/c/a/a/l/g;

    move-result-object v1

    .line 12
    iput-object v1, v9, Le/c/a/a/t/b;->Z:Le/c/a/a/l/g;

    .line 13
    iget-object v1, v9, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    sget v3, Le/c/a/a/k;->Chip_hideMotionSpec:I

    invoke-static {v1, v0, v3}, Le/c/a/a/l/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le/c/a/a/l/g;

    move-result-object v1

    .line 14
    iput-object v1, v9, Le/c/a/a/t/b;->a0:Le/c/a/a/l/g;

    .line 15
    sget v1, Le/c/a/a/k;->Chip_chipStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->X(F)V

    sget v1, Le/c/a/a/k;->Chip_iconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->i0(F)V

    sget v1, Le/c/a/a/k;->Chip_iconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->h0(F)V

    sget v1, Le/c/a/a/k;->Chip_textStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->n0(F)V

    sget v1, Le/c/a/a/k;->Chip_textEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->m0(F)V

    sget v1, Le/c/a/a/k;->Chip_closeIconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->d0(F)V

    sget v1, Le/c/a/a/k;->Chip_closeIconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->b0(F)V

    sget v1, Le/c/a/a/k;->Chip_chipEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v9, v1}, Le/c/a/a/t/b;->R(F)V

    sget v1, Le/c/a/a/k;->Chip_android_maxWidth:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 16
    iput v1, v9, Le/c/a/a/t/b;->K0:I

    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    sget-object v2, Le/c/a/a/k;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->x:I

    new-array v5, v10, [I

    move-object v0, p1

    move-object v1, p2

    move v3, v6

    invoke-static/range {v0 .. v5}, Le/c/a/a/a0/k;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Le/c/a/a/k;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->q:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x30

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v8, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v1, v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    sget v2, Le/c/a/a/k;->Chip_chipMinTouchTargetSize:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {p0, v9}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Le/c/a/a/t/b;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 23
    invoke-virtual {v9, v0}, Le/c/a/a/f0/g;->p(F)V

    sget-object v2, Le/c/a/a/k;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->x:I

    new-array v5, v10, [I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Le/c/a/a/a0/k;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    sget v0, Le/c/a/a/k;->Chip_android_textColor:I

    invoke-static {p1, p2, v0}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    sget p1, Le/c/a/a/k;->Chip_shapeAppearance:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/google/android/material/chip/Chip$b;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$b;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    if-nez p1, :cond_f

    .line 24
    new-instance p1, Le/c/a/a/t/a;

    invoke-direct {p1, p0}, Le/c/a/a/t/a;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    :cond_f
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 26
    iget-object p1, v9, Le/c/a/a/t/b;->J:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, v9, Le/c/a/a/t/b;->I0:Landroid/text/TextUtils$TruncateAt;

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 30
    iget-boolean p1, p1, Le/c/a/a/t/b;->J0:Z

    if-nez p1, :cond_10

    .line 31
    invoke-virtual {p0, v8}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    invoke-virtual {p0, v8}, Landroid/widget/CheckBox;->setHorizontallyScrolling(Z)V

    :cond_10
    invoke-virtual {p0, v7}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    .line 32
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->q:Z

    if-eqz p1, :cond_11

    .line 33
    iget p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 34
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 35
    iput p1, p0, Lcom/google/android/material/chip/Chip;->r:I

    return-void

    .line 36
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Chip does not support multi-line text"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Le/c/a/a/t/b;->C(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Le/c/a/a/c0/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->q0:Le/c/a/a/a0/i;

    .line 2
    iget-object v0, v0, Le/c/a/a/a0/i;->f:Le/c/a/a/c0/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->o:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->e(I)Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidateOutline()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    const-class v0, Ld/j/b/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, -0x80000000

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    :try_start_0
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v6, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "t"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    const-string v1, "Chip"

    const-string v6, "Unable to send Accessibility Exit event"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    .line 3
    iget-object v1, v0, Ld/j/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Ld/j/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v6, 0x7

    const/16 v7, 0x100

    const/16 v8, 0x80

    if-eq v1, v6, :cond_4

    const/16 v6, 0x9

    if-eq v1, v6, :cond_4

    if-eq v1, v3, :cond_2

    goto :goto_5

    :cond_2
    iget v1, v0, Ld/j/b/a;->m:I

    if-eq v1, v2, :cond_7

    if-ne v1, v2, :cond_3

    goto :goto_4

    .line 4
    :cond_3
    iput v2, v0, Ld/j/b/a;->m:I

    invoke-virtual {v0, v2, v8}, Ld/j/b/a;->s(II)Z

    invoke-virtual {v0, v1, v7}, Ld/j/b/a;->s(II)Z

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6
    iget-object v6, v0, Lcom/google/android/material/chip/Chip$b;->q:Lcom/google/android/material/chip/Chip;

    invoke-static {v6}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/google/android/material/chip/Chip$b;->q:Lcom/google/android/material/chip/Chip;

    invoke-static {v6}, Lcom/google/android/material/chip/Chip;->c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget v3, v0, Ld/j/b/a;->m:I

    if-ne v3, v1, :cond_6

    goto :goto_3

    :cond_6
    iput v1, v0, Ld/j/b/a;->m:I

    invoke-virtual {v0, v1, v8}, Ld/j/b/a;->s(II)Z

    invoke-virtual {v0, v3, v7}, Ld/j/b/a;->s(II)Z

    :goto_3
    if-eq v1, v2, :cond_7

    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_8

    .line 8
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v4, 0x1

    :cond_9
    return v4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v6, 0x3d

    if-eq v2, v6, :cond_6

    const/16 v6, 0x42

    if-eq v2, v6, :cond_4

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x13

    if-eq v2, v7, :cond_1

    const/16 v7, 0x15

    if-eq v2, v7, :cond_0

    const/16 v7, 0x16

    if-eq v2, v7, :cond_2

    const/16 v6, 0x82

    goto :goto_0

    :cond_0
    const/16 v6, 0x11

    goto :goto_0

    :cond_1
    const/16 v6, 0x21

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    add-int/2addr v2, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v6, v1}, Ld/j/b/a;->n(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_2

    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 2
    iget v2, v0, Ld/j/b/a;->l:I

    if-eq v2, v3, :cond_5

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4, v1}, Ld/j/b/a;->p(IILandroid/os/Bundle;)Z

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 3
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ld/j/b/a;->n(ILandroid/graphics/Rect;)Z

    move-result v4

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5, v1}, Ld/j/b/a;->n(ILandroid/graphics/Rect;)Z

    move-result v4

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    .line 5
    iget v0, v0, Ld/j/b/a;->l:I

    if-eq v0, v3, :cond_9

    return v5

    .line 6
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_a
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Ld/b/q/g;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Le/c/a/a/t/b;->I(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v1, 0x1

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_5

    const v3, 0x101009c

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_6

    const v3, 0x1010367

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_7

    const v3, 0x10100a7

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10100a1

    aput v3, v2, v1

    .line 4
    :cond_8
    invoke-virtual {v0, v2}, Le/c/a/a/t/b;->e0([I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_a
    return-void
.end method

.method public e(I)Z
    .locals 9

    iput p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean p1, Le/c/a/a/d0/a;->a:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :goto_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 5
    iget v0, v0, Le/c/a/a/t/b;->E:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    invoke-virtual {v2}, Le/c/a/a/t/b;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    goto :goto_1

    .line 7
    :cond_2
    sget-boolean p1, Le/c/a/a/d0/a;->a:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 8
    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-lez v0, :cond_5

    div-int/lit8 v1, v0, 0x2

    move v8, v1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v7, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v7, :cond_6

    .line 9
    :goto_4
    sget-boolean p1, Le/c/a/a/d0/a;->a:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    return v1

    .line 10
    :cond_6
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 11
    :cond_8
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    move-object v3, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    goto :goto_4
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/c/a/a/t/b;->F()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, v0, Le/c/a/a/t/b;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->X:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->Y:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->D:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/c/a/a/t/b;->E()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->i0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/b/k/m$i;->D1(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->N:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->M:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->E:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->b0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->G:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->H:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/c/a/a/t/b;->F()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->U:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->h0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->T:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->g0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->S:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->I0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    .line 1
    iget v1, v0, Ld/j/b/a;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2
    iget v0, v0, Ld/j/b/a;->k:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public getHideMotionSpec()Le/c/a/a/l/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->a0:Le/c/a/a/l/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->d0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->c0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->I:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShapeAppearanceModel()Le/c/a/a/f0/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 1
    iget-object v0, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object v0, v0, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    return-object v0
.end method

.method public getShowMotionSpec()Le/c/a/a/l/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Le/c/a/a/t/b;->Z:Le/c/a/a/l/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->f0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Le/c/a/a/t/b;->e0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 1
    sget-boolean v0, Le/c/a/a/d0/a;->a:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Le/c/a/a/t/b;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Ld/h/l/p;->a0(Landroid/view/View;Ld/h/l/a;)V

    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 1
    iget-object v1, v1, Le/c/a/a/t/b;->I:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v1}, Le/c/a/a/d0/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/c/a/a/t/b;->o0(Z)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Ld/h/l/p;->d0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    return-void
.end method

.method public final k()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, v0, Le/c/a/a/t/b;->i0:F

    .line 2
    iget v2, v0, Le/c/a/a/t/b;->f0:F

    add-float/2addr v1, v2

    .line 3
    invoke-virtual {v0}, Le/c/a/a/t/b;->D()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 4
    iget v2, v1, Le/c/a/a/t/b;->b0:F

    .line 5
    iget v3, v1, Le/c/a/a/t/b;->e0:F

    add-float/2addr v2, v3

    .line 6
    invoke-virtual {v1}, Le/c/a/a/t/b;->A()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v2, v0, v3}, Ld/h/l/p;->j0(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Le/c/a/a/c0/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->w:Le/c/a/a/c0/d;

    invoke-virtual {v1, v2, v0, v3}, Le/c/a/a/c0/b;->c(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/c0/d;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    invoke-static {p0, v0}, Ld/b/k/m$i;->j1(Landroid/view/View;Le/c/a/a/f0/g;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->z:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/chip/Chip;->A:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    .line 1
    iget v1, v0, Ld/j/b/a;->l:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ld/j/b/a;->k(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p2, p3}, Ld/j/b/a;->n(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.view.View"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_0

    :cond_2
    const-string v0, "android.widget.Button"

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 1
    iget-boolean v1, v0, Le/c/a/a/a0/e;->g:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-ne v4, p0, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_4
    move v6, v3

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    .line 3
    :goto_5
    sget v0, Le/c/a/a/f;->row_index_key:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_7

    const/4 v4, -0x1

    goto :goto_6

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    :goto_6
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-static/range {v4 .. v9}, Ld/h/l/x/b$c;->a(IIIIZZ)Ld/h/l/x/b$c;

    move-result-object v0

    .line 5
    iget-object v0, v0, Ld/h/l/x/b$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_8
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->r:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->r:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_3

    .line 1
    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v0, v3, v3}, Ld/j/b/a;->s(II)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ld/b/q/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->L(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->L(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean v0, v0, Le/c/a/a/t/b;->V:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->M(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->M(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->N(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->N(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->O(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->O(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->D:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Le/c/a/a/t/b;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->P(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Q(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Q(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Le/c/a/a/t/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eq v0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Le/c/a/a/t/b;->H0:Ljava/lang/ref/WeakReference;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Le/c/a/a/t/b;->J0:Z

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Le/c/a/a/t/b;->H0:Ljava/lang/ref/WeakReference;

    .line 5
    iget p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->e(I)Z

    goto :goto_0

    .line 6
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Le/c/a/a/t/b;->i0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Le/c/a/a/t/b;->i0:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    invoke-virtual {v0}, Le/c/a/a/t/b;->J()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->R(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->S(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->S(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->T(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->T(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->U(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->U(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->V(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->V(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Le/c/a/a/t/b;->E:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Le/c/a/a/t/b;->E:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    invoke-virtual {v0}, Le/c/a/a/t/b;->J()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->W(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Le/c/a/a/t/b;->b0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Le/c/a/a/t/b;->b0:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    invoke-virtual {v0}, Le/c/a/a/t/b;->J()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->X(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Y(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Y(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Z(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->Z(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->a0(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->U:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_0

    invoke-static {}, Ld/h/j/a;->c()Ld/h/j/a;

    move-result-object v1

    .line 2
    iget-object v2, v1, Ld/h/j/a;->c:Ld/h/j/c;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Ld/h/j/a;->d(Ljava/lang/CharSequence;Ld/h/j/c;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    iput-object p1, v0, Le/c/a/a/t/b;->U:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->b0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->b0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->a0(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->c0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->c0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->d0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->d0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->f0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->f0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->g0(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget v2, v1, Le/c/a/a/f0/g$b;->o:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    iput p1, v1, Le/c/a/a/f0/g$b;->o:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->x()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_1

    .line 1
    iput-object p1, v0, Le/c/a/a/t/b;->I0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->q:Z

    iget p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->e(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Le/c/a/a/l/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Le/c/a/a/t/b;->a0:Le/c/a/a/l/g;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Le/c/a/a/l/g;->b(Landroid/content/Context;I)Le/c/a/a/l/g;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/c/a/a/t/b;->a0:Le/c/a/a/l/g;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->h0(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->h0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->i0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->i0(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iput p1, v0, Le/c/a/a/t/b;->K0:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->j0(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 1
    iget-boolean p1, p1, Le/c/a/a/t/b;->F0:Z

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Ld/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->j0(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 3
    iget-boolean p1, p1, Le/c/a/a/t/b;->F0:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Le/c/a/a/f0/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 1
    iget-object v1, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iput-object p1, v1, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    return-void
.end method

.method public setShowMotionSpec(Le/c/a/a/l/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Le/c/a/a/t/b;->Z:Le/c/a/a/l/g;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-static {v1, p1}, Le/c/a/a/l/g;->b(Landroid/content/Context;I)Le/c/a/a/l/g;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/c/a/a/t/b;->Z:Le/c/a/a/l/g;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    .line 1
    iget-boolean v0, v0, Le/c/a/a/t/b;->J0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Le/c/a/a/t/b;->k0(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Le/c/a/a/c0/b;

    iget-object v2, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Le/c/a/a/c0/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Le/c/a/a/t/b;->l0(Le/c/a/a/c0/b;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Le/c/a/a/c0/b;

    iget-object v1, p1, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Le/c/a/a/c0/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Le/c/a/a/t/b;->l0(Le/c/a/a/c0/b;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearance(Le/c/a/a/c0/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->l0(Le/c/a/a/c0/b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Le/c/a/a/t/b;->f0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Le/c/a/a/t/b;->f0:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    invoke-virtual {v0}, Le/c/a/a/t/b;->J()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->m0(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Le/c/a/a/t/b;->e0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Le/c/a/a/t/b;->e0:F

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    invoke-virtual {v0}, Le/c/a/a/t/b;->J()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Le/c/a/a/t/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Le/c/a/a/t/b;->j0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/a/t/b;->n0(F)V

    :cond_0
    return-void
.end method
