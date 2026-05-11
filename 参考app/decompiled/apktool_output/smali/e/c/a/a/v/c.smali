.class public final Le/c/a/a/v/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/c/a/a/v/b;

.field public final b:Le/c/a/a/v/b;

.field public final c:Le/c/a/a/v/b;

.field public final d:Le/c/a/a/v/b;

.field public final e:Le/c/a/a/v/b;

.field public final f:Le/c/a/a/v/b;

.field public final g:Le/c/a/a/v/b;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Le/c/a/a/b;->materialCalendarStyle:I

    const-class v1, Le/c/a/a/v/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ld/b/k/m$i;->c1(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Le/c/a/a/k;->MaterialCalendar:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Le/c/a/a/k;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/v/c;->a:Le/c/a/a/v/b;

    sget v1, Le/c/a/a/k;->MaterialCalendar_dayInvalidStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/v/c;->g:Le/c/a/a/v/b;

    sget v1, Le/c/a/a/k;->MaterialCalendar_daySelectedStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/v/c;->b:Le/c/a/a/v/b;

    sget v1, Le/c/a/a/k;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/v/c;->c:Le/c/a/a/v/b;

    sget v1, Le/c/a/a/k;->MaterialCalendar_rangeFillColor:I

    invoke-static {p1, v0, v1}, Ld/b/k/m$i;->X(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, Le/c/a/a/k;->MaterialCalendar_yearStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v3

    iput-object v3, p0, Le/c/a/a/v/c;->d:Le/c/a/a/v/b;

    sget v3, Le/c/a/a/k;->MaterialCalendar_yearSelectedStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object v3

    iput-object v3, p0, Le/c/a/a/v/c;->e:Le/c/a/a/v/b;

    sget v3, Le/c/a/a/k;->MaterialCalendar_yearTodayStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Le/c/a/a/v/b;->a(Landroid/content/Context;I)Le/c/a/a/v/b;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/v/c;->f:Le/c/a/a/v/b;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/c/a/a/v/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
