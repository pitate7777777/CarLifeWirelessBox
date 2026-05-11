.class public Le/c/a/a/v/v;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/v/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Le/c/a/a/v/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Le/c/a/a/v/a;

.field public final e:Le/c/a/a/v/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/v/d<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Le/c/a/a/v/g$f;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/c/a/a/v/d;Le/c/a/a/v/a;Le/c/a/a/v/g$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/c/a/a/v/d<",
            "*>;",
            "Le/c/a/a/v/a;",
            "Le/c/a/a/v/g$f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 1
    iget-object v0, p3, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 2
    iget-object v1, p3, Le/c/a/a/v/a;->f:Le/c/a/a/v/s;

    .line 3
    iget-object v2, p3, Le/c/a/a/v/a;->h:Le/c/a/a/v/s;

    .line 4
    invoke-virtual {v0, v2}, Le/c/a/a/v/s;->b(Le/c/a/a/v/s;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v2, v1}, Le/c/a/a/v/s;->b(Le/c/a/a/v/s;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Le/c/a/a/v/t;->j:I

    invoke-static {p1}, Le/c/a/a/v/g;->F0(Landroid/content/Context;)I

    move-result v1

    mul-int v1, v1, v0

    invoke-static {p1}, Le/c/a/a/v/o;->J0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Le/c/a/a/d;->mtrl_calendar_day_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-object p1, p0, Le/c/a/a/v/v;->c:Landroid/content/Context;

    add-int/2addr v1, v0

    iput v1, p0, Le/c/a/a/v/v;->g:I

    iput-object p3, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    iput-object p2, p0, Le/c/a/a/v/v;->e:Le/c/a/a/v/d;

    iput-object p4, p0, Le/c/a/a/v/v;->f:Le/c/a/a/v/g$f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->f(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 1
    iget v0, v0, Le/c/a/a/v/a;->j:I

    return v0
.end method

.method public b(I)J
    .locals 2

    iget-object v0, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 2
    invoke-virtual {v0, p1}, Le/c/a/a/v/s;->r(I)Le/c/a/a/v/s;

    move-result-object p1

    .line 3
    iget-object p1, p1, Le/c/a/a/v/s;->e:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 3

    check-cast p1, Le/c/a/a/v/v$a;

    .line 1
    iget-object v0, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 2
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 3
    invoke-virtual {v0, p2}, Le/c/a/a/v/s;->r(I)Le/c/a/a/v/s;

    move-result-object p2

    iget-object v0, p1, Le/c/a/a/v/v$a;->t:Landroid/widget/TextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Le/c/a/a/v/s;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Le/c/a/a/v/v$a;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v0, Le/c/a/a/f;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Le/c/a/a/v/t;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Le/c/a/a/v/t;

    move-result-object v0

    iget-object v0, v0, Le/c/a/a/v/t;->e:Le/c/a/a/v/s;

    invoke-virtual {p2, v0}, Le/c/a/a/v/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Le/c/a/a/v/t;

    move-result-object p2

    .line 4
    iget-object v0, p2, Le/c/a/a/v/t;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Le/c/a/a/v/t;->f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Le/c/a/a/v/t;->f:Le/c/a/a/v/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/c/a/a/v/d;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Le/c/a/a/v/t;->f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Le/c/a/a/v/t;->f:Le/c/a/a/v/d;

    invoke-interface {v0}, Le/c/a/a/v/d;->s()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p2, Le/c/a/a/v/t;->g:Ljava/util/Collection;

    goto :goto_2

    .line 5
    :cond_2
    new-instance v0, Le/c/a/a/v/t;

    iget-object v1, p0, Le/c/a/a/v/v;->e:Le/c/a/a/v/d;

    iget-object v2, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    invoke-direct {v0, p2, v1, v2}, Le/c/a/a/v/t;-><init>(Le/c/a/a/v/s;Le/c/a/a/v/d;Le/c/a/a/v/a;)V

    iget p2, p2, Le/c/a/a/v/s;->h:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    new-instance p2, Le/c/a/a/v/u;

    invoke-direct {p2, p0, p1}, Le/c/a/a/v/u;-><init>(Le/c/a/a/v/v;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Le/c/a/a/h;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/c/a/a/v/o;->J0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 v0, -0x1

    iget v1, p0, Le/c/a/a/v/v;->g:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Le/c/a/a/v/v$a;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Le/c/a/a/v/v$a;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Le/c/a/a/v/v$a;

    invoke-direct {p1, p2, v1}, Le/c/a/a/v/v$a;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method

.method public g(I)Le/c/a/a/v/s;
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 2
    invoke-virtual {v0, p1}, Le/c/a/a/v/s;->r(I)Le/c/a/a/v/s;

    move-result-object p1

    return-object p1
.end method

.method public h(Le/c/a/a/v/s;)I
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 2
    invoke-virtual {v0, p1}, Le/c/a/a/v/s;->t(Le/c/a/a/v/s;)I

    move-result p1

    return p1
.end method
