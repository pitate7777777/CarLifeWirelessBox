.class public Ld/h/l/w$j;
.super Ld/h/l/w$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final r:Ld/h/l/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object v0

    sput-object v0, Ld/h/l/w$j;->r:Ld/h/l/w;

    return-void
.end method

.method public constructor <init>(Ld/h/l/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/h/l/w$i;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
