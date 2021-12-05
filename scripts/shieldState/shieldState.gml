enum shieldState
{
	DEFLECT,  // Can deflect projectiles or negate damage without reducing shield energy
	BLOCK  // Normal blocking
}

global.shield_energy = 100;

switch( shieldState )
{
	case shieldState.DEFLECT:
		break;
		
	case shieldState.BLOCK:
	
		break;
		
	default:
		break;
}