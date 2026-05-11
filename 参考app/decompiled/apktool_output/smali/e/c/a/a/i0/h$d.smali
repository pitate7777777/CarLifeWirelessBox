.class public Le/c/a/a/i0/h$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/i0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/i0/h;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/h;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Le/c/a/a/i0/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    .line 1
    iget-object v2, v1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget-object v1, v1, Le/c/a/a/i0/h;->m:Le/c/a/a/f0/g;

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    iget-object v1, v1, Le/c/a/a/i0/h;->l:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_1
    iget-object v1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto/16 :goto_2

    .line 4
    :cond_3
    iget-object v5, v1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    iget-object v7, v1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Le/c/a/a/f0/g;

    move-result-object v7

    sget v8, Le/c/a/a/b;->colorControlHighlight:I

    invoke-static {v0, v8}, Ld/b/k/m$i;->W(Landroid/view/View;I)I

    move-result v8

    new-array v9, v4, [[I

    new-array v10, v3, [I

    const v11, 0x10100a7

    aput v11, v10, v6

    aput-object v10, v9, v6

    new-array v10, v6, [I

    aput-object v10, v9, v3

    const v10, 0x3dcccccd    # 0.1f

    if-ne v5, v4, :cond_4

    .line 5
    sget v1, Le/c/a/a/b;->colorSurface:I

    invoke-static {v0, v1}, Ld/b/k/m$i;->W(Landroid/view/View;I)I

    move-result v1

    new-instance v5, Le/c/a/a/f0/g;

    .line 6
    iget-object v11, v7, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object v11, v11, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    .line 7
    invoke-direct {v5, v11}, Le/c/a/a/f0/g;-><init>(Le/c/a/a/f0/j;)V

    invoke-static {v8, v1, v10}, Ld/b/k/m$i;->B0(IIF)I

    move-result v8

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v6, v10, v3

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v11}, Le/c/a/a/f0/g;->q(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v1}, Le/c/a/a/f0/g;->setTint(I)V

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v1, v10, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Le/c/a/a/f0/g;

    .line 8
    iget-object v9, v7, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object v9, v9, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    .line 9
    invoke-direct {v8, v9}, Le/c/a/a/f0/g;-><init>(Le/c/a/a/f0/j;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Le/c/a/a/f0/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v1, v5, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v6

    aput-object v7, v1, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5}, Ld/h/l/p;->d0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-ne v5, v3, :cond_5

    .line 10
    iget-object v1, v1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v1

    invoke-static {v8, v1, v10}, Ld/b/k/m$i;->B0(IIF)I

    move-result v5

    new-array v8, v4, [I

    aput v5, v8, v6

    aput v1, v8, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v1, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5}, Ld/h/l/p;->d0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_5
    :goto_2
    iget-object v1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    if-eqz v1, :cond_8

    .line 12
    new-instance v5, Le/c/a/a/i0/j;

    invoke-direct {v5, v1, v0}, Le/c/a/a/i0/j;-><init>(Le/c/a/a/i0/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v1, Le/c/a/a/i0/h;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Le/c/a/a/i0/k;

    invoke-direct {v5, v1}, Le/c/a/a/i0/k;-><init>(Le/c/a/a/i0/h;)V

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 13
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    .line 14
    iget-object v1, v1, Le/c/a/a/i0/h;->d:Landroid/text/TextWatcher;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    .line 16
    iget-object v1, v1, Le/c/a/a/i0/h;->d:Landroid/text/TextWatcher;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-nez v6, :cond_7

    .line 19
    iget-object v0, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    iget-object v0, v0, Le/c/a/a/i0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, v4}, Ld/h/l/p;->h0(Landroid/view/View;I)V

    :cond_7
    iget-object v0, p0, Le/c/a/a/i0/h$d;->a:Le/c/a/a/i0/h;

    .line 20
    iget-object v0, v0, Le/c/a/a/i0/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    .line 22
    :cond_8
    throw v2

    .line 23
    :cond_9
    throw v2
.end method
