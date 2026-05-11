.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source ""


# instance fields
.field public final d0:Landroid/content/Context;

.field public final e0:Landroid/widget/ArrayAdapter;

.field public f0:Landroid/widget/Spinner;

.field public final g0:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Ld/p/m;->dropdownPreferenceStyle:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroidx/preference/DropDownPreference$a;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$a;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->g0:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->d0:Landroid/content/Context;

    .line 2
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Landroidx/preference/DropDownPreference;->d0:Landroid/content/Context;

    const v0, 0x1090009

    invoke-direct {p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p1, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 5
    iget-object p1, p0, Landroidx/preference/ListPreference;->Y:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 6
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v0, p1, v1

    iget-object v2, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public q()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->q()V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public u(Ld/p/l;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    sget v1, Ld/p/o;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->g0:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    .line 1
    iget-object v1, p0, Landroidx/preference/ListPreference;->a0:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Landroidx/preference/ListPreference;->Z:[Ljava/lang/CharSequence;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 3
    array-length v4, v2

    add-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->u(Ld/p/l;)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
