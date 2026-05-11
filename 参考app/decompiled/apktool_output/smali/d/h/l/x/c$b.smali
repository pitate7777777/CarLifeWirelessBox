.class public Ld/h/l/x/c$b;
.super Ld/h/l/x/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ld/h/l/x/c;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/h/l/x/c$a;-><init>(Ld/h/l/x/c;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Ld/h/l/x/c$a;->a:Ld/h/l/x/c;

    invoke-virtual {v0, p1}, Ld/h/l/x/c;->b(I)Ld/h/l/x/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p1, Ld/h/l/x/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
