.class public abstract Ld/p/f;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Ld/p/j$c;
.implements Ld/p/j$a;
.implements Ld/p/j$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/p/f$c;,
        Ld/p/f$d;,
        Ld/p/f$f;,
        Ld/p/f$e;
    }
.end annotation


# instance fields
.field public final Z:Ld/p/f$c;

.field public a0:Ld/p/j;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:Ljava/lang/Runnable;

.field public g0:Landroid/os/Handler;

.field public final h0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ld/p/f$c;

    invoke-direct {v0, p0}, Ld/p/f$c;-><init>(Ld/p/f;)V

    iput-object v0, p0, Ld/p/f;->Z:Ld/p/f$c;

    sget v0, Ld/p/p;->preference_list_fragment:I

    iput v0, p0, Ld/p/f;->e0:I

    new-instance v0, Ld/p/f$a;

    invoke-direct {v0, p0}, Ld/p/f$a;-><init>(Ld/p/f;)V

    iput-object v0, p0, Ld/p/f;->g0:Landroid/os/Handler;

    new-instance v0, Ld/p/f$b;

    invoke-direct {v0, p0}, Ld/p/f$b;-><init>(Ld/p/f;)V

    iput-object v0, p0, Ld/p/f;->h0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public E0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ld/p/o;->recycler_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Ld/p/p;->preference_recyclerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p2, Ld/p/k;

    invoke-direct {p2, p1}, Ld/p/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Ld/q/d/x;)V

    return-object p1
.end method

.method public L(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->L(Landroid/os/Bundle;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Ld/p/m;->preferenceTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    sget p1, Ld/p/r;->PreferenceThemeOverlay:I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance p1, Ld/p/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ld/p/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/p/f;->a0:Ld/p/j;

    .line 1
    iput-object p0, p1, Ld/p/j;->k:Ld/p/j$b;

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->j:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v3, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/baidu/carlifevehicle/SettingsActivity$a;

    .line 4
    iget-object v4, v3, Ld/p/f;->a0:Ld/p/j;

    if-eqz v4, :cond_a

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v5

    .line 6
    iput-boolean v2, v4, Ld/p/j;->e:Z

    .line 7
    new-instance v6, Ld/p/i;

    invoke-direct {v6, v5, v4}, Ld/p/i;-><init>(Landroid/content/Context;Ld/p/j;)V

    .line 8
    iget-object v5, v6, Ld/p/i;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    :try_start_0
    invoke-virtual {v6, v5, v0}, Ld/p/i;->c(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 10
    check-cast v0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->t(Ld/p/j;)V

    .line 11
    iget-object v5, v4, Ld/p/j;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iput-boolean v1, v4, Ld/p/j;->e:Z

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->M(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v4, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preference object with key "

    const-string v2, " is not a PreferenceScreen"

    invoke-static {v1, p1, v2}, Le/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 13
    iget-object p1, v3, Ld/p/f;->a0:Ld/p/j;

    .line 14
    iget-object v4, p1, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eq v0, v4, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->x()V

    :cond_5
    iput-object v0, p1, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 15
    iput-boolean v2, v3, Ld/p/f;->c0:Z

    iget-boolean p1, v3, Ld/p/f;->d0:Z

    if-eqz p1, :cond_8

    .line 16
    iget-object p1, v3, Ld/p/f;->g0:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, v3, Ld/p/f;->g0:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    :goto_2
    const-string p1, "resolutions"

    .line 17
    invoke-virtual {v3, p1}, Ld/p/f;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    if-nez p1, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    iput-object v3, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$d;

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 19
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Ld/p/s;->PreferenceFragmentCompat:[I

    sget v1, Ld/p/m;->preferenceFragmentCompatStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Ld/p/s;->PreferenceFragmentCompat_android_layout:I

    iget v1, p0, Ld/p/f;->e0:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ld/p/f;->e0:I

    sget v0, Ld/p/s;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Ld/p/s;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v5, Ld/p/s;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p3, p0, Ld/p/f;->e0:I

    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    instance-of v6, p3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p3}, Ld/p/f;->E0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Ld/p/f;->Z:Ld/p/f$c;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 1
    iget-object p1, p0, Ld/p/f;->Z:Ld/p/f$c;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :cond_0
    iput v3, p1, Ld/p/f$c;->b:I

    iput-object v0, p1, Ld/p/f$c;->a:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Ld/p/f$c;->d:Ld/p/f;

    iget-object p1, p1, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    if-eq v1, v4, :cond_1

    .line 3
    iget-object p1, p0, Ld/p/f;->Z:Ld/p/f$c;

    .line 4
    iput v1, p1, Ld/p/f$c;->b:I

    iget-object p1, p1, Ld/p/f$c;->d:Ld/p/f;

    iget-object p1, p1, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 5
    :cond_1
    iget-object p1, p0, Ld/p/f;->Z:Ld/p/f$c;

    .line 6
    iput-boolean v5, p1, Ld/p/f$c;->c:Z

    .line 7
    iget-object p1, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Ld/p/f;->g0:Landroid/os/Handler;

    iget-object p3, p0, Ld/p/f;->h0:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 8
    :cond_3
    throw v2

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R()V
    .locals 3

    iget-object v0, p0, Ld/p/f;->g0:Landroid/os/Handler;

    iget-object v1, p0, Ld/p/f;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/p/f;->g0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Ld/p/f;->c0:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    iget-object v0, p0, Ld/p/f;->a0:Ld/p/j;

    .line 4
    iget-object v0, v0, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->x()V

    .line 6
    :cond_0
    iput-object v2, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->I:Z

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Ld/p/f;->a0:Ld/p/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v0, v0, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->M(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/p/f;->a0:Ld/p/j;

    .line 2
    iget-object v0, v0, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->d(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-object v0, p0, Ld/p/f;->a0:Ld/p/j;

    .line 3
    iput-object p0, v0, Ld/p/j;->i:Ld/p/j$c;

    .line 4
    iput-object p0, v0, Ld/p/j;->j:Ld/p/j$a;

    return-void
.end method

.method public i0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-object v0, p0, Ld/p/f;->a0:Ld/p/j;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Ld/p/j;->i:Ld/p/j$c;

    .line 4
    iput-object v1, v0, Ld/p/j;->j:Ld/p/j$a;

    return-void
.end method

.method public j0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Ld/p/f;->a0:Ld/p/j;

    .line 2
    iget-object p2, p2, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->c(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Ld/p/f;->c0:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Ld/p/f;->a0:Ld/p/j;

    .line 6
    iget-object p1, p1, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance v0, Ld/p/g;

    invoke-direct {v0, p1}, Ld/p/g;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 9
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->s()V

    .line 10
    :cond_1
    iget-object p1, p0, Ld/p/f;->f0:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/p/f;->f0:Ljava/lang/Runnable;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/p/f;->d0:Z

    return-void
.end method
