.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$c;
    }
.end annotation


# instance fields
.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Landroid/widget/SeekBar;

.field public Y:Landroid/widget/TextView;

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public d0:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Ld/p/m;->seekBarPreferenceStyle:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v2, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->c0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v2, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v2, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->d0:Landroid/view/View$OnKeyListener;

    sget-object v2, Ld/p/s;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ld/p/s;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->T:I

    sget p2, Ld/p/s;->SeekBarPreference_android_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-eq p2, v0, :cond_1

    iput p2, p0, Landroidx/preference/SeekBarPreference;->U:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 3
    :cond_1
    sget p2, Ld/p/s;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 4
    iget v0, p0, Landroidx/preference/SeekBarPreference;->V:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    iget v2, p0, Landroidx/preference/SeekBarPreference;->T:I

    sub-int/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->V:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 5
    :cond_2
    sget p2, Ld/p/s;->SeekBarPreference_adjustable:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->Z:Z

    sget p2, Ld/p/s;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->a0:Z

    sget p2, Ld/p/s;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->b0:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public B(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->B(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$c;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->B(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->e:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->f:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iget p1, p1, Landroidx/preference/SeekBarPreference$c;->g:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->U:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    return-void
.end method

.method public C()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->C()Landroid/os/Parcelable;

    move-result-object v0

    .line 1
    iget-boolean v1, p0, Landroidx/preference/Preference;->w:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$c;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$c;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->e:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->f:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->g:I

    return-object v1
.end method

.method public D(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->h(I)I

    move-result p1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->M(IZ)V

    return-void
.end method

.method public final M(IZ)V
    .locals 2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    if-eq p1, v0, :cond_5

    iput p1, p0, Landroidx/preference/SeekBarPreference;->S:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->O(I)V

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->L()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->h(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->k()V

    iget-object v0, p0, Landroidx/preference/Preference;->f:Ld/p/j;

    invoke-virtual {v0}, Ld/p/j;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Landroidx/preference/Preference;->f:Ld/p/j;

    .line 3
    iget-boolean p1, p1, Ld/p/j;->e:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    :cond_5
    return-void
.end method

.method public N(Landroid/widget/SeekBar;)V
    .locals 2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    if-eq v1, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroidx/preference/SeekBarPreference;->M(IZ)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->T:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->S:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->O(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public O(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public u(Ld/p/l;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->u(Ld/p/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->d0:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Ld/p/o;->seekbar:I

    invoke-virtual {p1, v0}, Ld/p/l;->w(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    sget v0, Ld/p/o;->seekbar_value:I

    invoke-virtual {p1, v0}, Ld/p/l;->w(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->a0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/TextView;

    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->c0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->T:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->V:I

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->V:I

    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->T:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->S:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->O(I)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public y(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
