.class public Le/c/a/a/i0/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f:Le/c/a/a/i0/h;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/j;->f:Le/c/a/a/i0/h;

    iput-object p2, p0, Le/c/a/a/i0/j;->e:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Le/c/a/a/i0/j;->f:Le/c/a/a/i0/h;

    .line 1
    invoke-virtual {p1}, Le/c/a/a/i0/h;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/c/a/a/i0/j;->f:Le/c/a/a/i0/h;

    .line 3
    iput-boolean p2, p1, Le/c/a/a/i0/h;->i:Z

    .line 4
    :cond_0
    iget-object p1, p0, Le/c/a/a/i0/j;->f:Le/c/a/a/i0/h;

    iget-object v0, p0, Le/c/a/a/i0/j;->e:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Le/c/a/a/i0/h;->h(Le/c/a/a/i0/h;Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    return p2
.end method
