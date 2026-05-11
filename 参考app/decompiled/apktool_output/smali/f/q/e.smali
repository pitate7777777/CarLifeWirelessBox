.class public Lf/q/e;
.super Lf/q/d;
.source ""


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/CharSequence;CIZI)I
    .locals 5

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "$this$indexOf"

    .line 1
    invoke-static {p0, p4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_3

    :cond_2
    const/4 p4, 0x1

    new-array v0, p4, [C

    aput-char p1, v0, v1

    const-string p1, "$this$indexOfAny"

    .line 2
    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    invoke-static {v0}, Ld/b/k/m$i;->r1([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_3

    :cond_3
    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    invoke-static {p0}, Lf/q/e;->a(Ljava/lang/CharSequence;)I

    move-result p1

    if-gt p2, p1, :cond_8

    :goto_0
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p4, :cond_6

    aget-char v4, v0, v3

    invoke-static {v4, v2, p3}, Ld/b/k/m$i;->K(CCZ)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    move p0, p2

    goto :goto_3

    :cond_7
    if-eq p2, p1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, -0x1

    :goto_3
    return p0
.end method
