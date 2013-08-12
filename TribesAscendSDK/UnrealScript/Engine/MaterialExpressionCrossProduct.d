module UnrealScript.Engine.MaterialExpressionCrossProduct;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCrossProduct : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}