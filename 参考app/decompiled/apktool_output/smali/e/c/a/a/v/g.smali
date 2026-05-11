.class public final Le/c/a/a/v/g;
.super Le/c/a/a/v/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/v/g$f;,
        Le/c/a/a/v/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/a/a/v/x<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final k0:Ljava/lang/Object;

.field public static final l0:Ljava/lang/Object;

.field public static final m0:Ljava/lang/Object;

.field public static final n0:Ljava/lang/Object;


# instance fields
.field public a0:I

.field public b0:Le/c/a/a/v/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/v/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public c0:Le/c/a/a/v/a;

.field public d0:Le/c/a/a/v/s;

.field public e0:Le/c/a/a/v/g$e;

.field public f0:Le/c/a/a/v/c;

.field public g0:Landroidx/recyclerview/widget/RecyclerView;

.field public h0:Landroidx/recyclerview/widget/RecyclerView;

.field public i0:Landroid/view/View;

.field public j0:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Le/c/a/a/v/g;->k0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Le/c/a/a/v/g;->l0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Le/c/a/a/v/g;->m0:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Le/c/a/a/v/g;->n0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/v/x;-><init>()V

    return-void
.end method

.method public static F0(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Le/c/a/a/d;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public E0(Le/c/a/a/v/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/v/w<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/v/x;->Z:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G0()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final H0(I)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Le/c/a/a/v/g$a;

    invoke-direct {v1, p0, p1}, Le/c/a/a/v/g$a;-><init>(Le/c/a/a/v/g;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public I0(Le/c/a/a/v/s;)V
    .locals 6

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Le/c/a/a/v/v;

    .line 1
    iget-object v1, v0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 2
    iget-object v1, v1, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 3
    invoke-virtual {v1, p1}, Le/c/a/a/v/s;->t(Le/c/a/a/v/s;)I

    move-result v1

    .line 4
    iget-object v2, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    invoke-virtual {v0, v2}, Le/c/a/a/v/v;->h(Le/c/a/a/v/s;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object p1, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    :cond_3
    invoke-virtual {p0, v1}, Le/c/a/a/v/g;->H0(I)V

    return-void
.end method

.method public J0(Le/c/a/a/v/g$e;)V
    .locals 4

    iput-object p1, p0, Le/c/a/a/v/g;->e0:Le/c/a/a/v/g$e;

    sget-object v0, Le/c/a/a/v/g$e;->f:Le/c/a/a/v/g$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    iget-object v0, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Le/c/a/a/v/c0;

    iget-object v3, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    iget v3, v3, Le/c/a/a/v/s;->g:I

    invoke-virtual {v0, v3}, Le/c/a/a/v/c0;->g(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->L0(I)V

    iget-object p1, p0, Le/c/a/a/v/g;->i0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le/c/a/a/v/g;->j0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Le/c/a/a/v/g$e;->e:Le/c/a/a/v/g$e;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Le/c/a/a/v/g;->i0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le/c/a/a/v/g;->j0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    invoke-virtual {p0, p1}, Le/c/a/a/v/g;->I0(Le/c/a/a/v/s;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->j:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/c/a/a/v/g;->a0:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Le/c/a/a/v/d;

    iput-object v0, p0, Le/c/a/a/v/g;->b0:Le/c/a/a/v/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Le/c/a/a/v/a;

    iput-object v0, p0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Le/c/a/a/v/s;

    iput-object p1, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    return-void
.end method

.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Le/c/a/a/v/g;->a0:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Le/c/a/a/v/c;

    invoke-direct {v0, p3}, Le/c/a/a/v/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/c/a/a/v/g;->f0:Le/c/a/a/v/c;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 2
    invoke-static {p3}, Le/c/a/a/v/o;->J0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Le/c/a/a/h;->mtrl_calendar_vertical:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    sget v1, Le/c/a/a/h;->mtrl_calendar_horizontal:I

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Le/c/a/a/f;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, Le/c/a/a/v/g$b;

    invoke-direct {v1, p0}, Le/c/a/a/v/g$b;-><init>(Le/c/a/a/v/g;)V

    invoke-static {p2, v1}, Ld/h/l/p;->a0(Landroid/view/View;Ld/h/l/a;)V

    new-instance v1, Le/c/a/a/v/f;

    invoke-direct {v1}, Le/c/a/a/v/f;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Le/c/a/a/v/s;->h:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    sget p2, Le/c/a/a/f;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Le/c/a/a/v/g$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Le/c/a/a/v/g$c;-><init>(Le/c/a/a/v/g;Landroid/content/Context;IZI)V

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance p2, Le/c/a/a/v/v;

    iget-object v0, p0, Le/c/a/a/v/g;->b0:Le/c/a/a/v/d;

    iget-object v1, p0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    new-instance v4, Le/c/a/a/v/g$d;

    invoke-direct {v4, p0}, Le/c/a/a/v/g$d;-><init>(Le/c/a/a/v/g;)V

    invoke-direct {p2, p3, v0, v1, v4}, Le/c/a/a/v/v;-><init>(Landroid/content/Context;Le/c/a/a/v/d;Le/c/a/a/v/a;Le/c/a/a/v/g$f;)V

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/c/a/a/g;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Le/c/a/a/f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Le/c/a/a/v/c0;

    invoke-direct {v1, p0}, Le/c/a/a/v/c0;-><init>(Le/c/a/a/v/g;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Le/c/a/a/v/g;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Le/c/a/a/v/h;

    invoke-direct {v1, p0}, Le/c/a/a/v/h;-><init>(Le/c/a/a/v/g;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    sget v0, Le/c/a/a/f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Le/c/a/a/f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v1, Le/c/a/a/v/i;

    invoke-direct {v1, p0}, Le/c/a/a/v/i;-><init>(Le/c/a/a/v/g;)V

    invoke-static {v0, v1}, Ld/h/l/p;->a0(Landroid/view/View;Ld/h/l/a;)V

    sget v1, Le/c/a/a/f;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "NAVIGATION_PREV_TAG"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v2, Le/c/a/a/f;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v3, Le/c/a/a/f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Le/c/a/a/v/g;->i0:Landroid/view/View;

    sget v3, Le/c/a/a/f;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Le/c/a/a/v/g;->j0:Landroid/view/View;

    sget-object v3, Le/c/a/a/v/g$e;->e:Le/c/a/a/v/g$e;

    invoke-virtual {p0, v3}, Le/c/a/a/v/g;->J0(Le/c/a/a/v/g$e;)V

    iget-object v3, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/c/a/a/v/s;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Le/c/a/a/v/j;

    invoke-direct {v4, p0, p2, v0}, Le/c/a/a/v/j;-><init>(Le/c/a/a/v/g;Le/c/a/a/v/v;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    new-instance v3, Le/c/a/a/v/k;

    invoke-direct {v3, p0}, Le/c/a/a/v/k;-><init>(Le/c/a/a/v/g;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Le/c/a/a/v/l;

    invoke-direct {v0, p0, p2}, Le/c/a/a/v/l;-><init>(Le/c/a/a/v/g;Le/c/a/a/v/v;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Le/c/a/a/v/m;

    invoke-direct {v0, p0, p2}, Le/c/a/a/v/m;-><init>(Le/c/a/a/v/g;Le/c/a/a/v/v;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_2
    invoke-static {p3}, Le/c/a/a/v/o;->J0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    new-instance p3, Ld/q/d/u;

    invoke-direct {p3}, Ld/q/d/u;-><init>()V

    iget-object v0, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v1, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    iget-object v2, p3, Ld/q/d/z;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m0:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    iget-object v1, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    :cond_5
    iput-object v0, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p3, Ld/q/d/z;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v0, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p3, Ld/q/d/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p3}, Ld/q/d/z;->b()V

    goto :goto_1

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_7
    :goto_1
    iget-object p3, p0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    invoke-virtual {p2, v0}, Le/c/a/a/v/v;->h(Le/c/a/a/v/s;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    return-object p1
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Le/c/a/a/v/g;->a0:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Le/c/a/a/v/g;->b0:Le/c/a/a/v/d;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
