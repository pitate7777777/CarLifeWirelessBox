.class public Le/c/a/a/i0/h$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/i0/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/c/a/a/i0/h;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/h;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/h$f;->e:Le/c/a/a/i0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/i0/h$f;->e:Le/c/a/a/i0/h;

    iget-object p1, p1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Le/c/a/a/i0/h$f;->e:Le/c/a/a/i0/h;

    invoke-static {v0, p1}, Le/c/a/a/i0/h;->h(Le/c/a/a/i0/h;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
