try ( closeRolloutFloater RolloutFloterTemplate) catch()

lightSimpleMsg = 0
lightSimpleState = 0


		
	rollout RolloutTemplate "Light Options"
	(
		
		
		
		button castShadowButton "Cast Shadow" width:170 height:30 pos:[0,0]
		on castShadowButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.baseObject.castShadows == on then(
							$.baseObject.castShadows = off
						)else(
							$.baseObject.castShadows = on
						)
						
				)else (
						
						if $[i].baseObject.castShadows == on then(
							$[i].baseObject.castShadows = off
						)else(
							$[i].baseObject.castShadows = on
						)
				)
				
			)
			
		)
		
		
		
		button DoubleSidedButton "Double Sided" width:170 height:30 pos:[0,30]
		on DoubleSidedButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.DoubleSided == on then(
							$.DoubleSided = off
						)else(
							$.DoubleSided = on
						)
						
				)else (
						
						if $[i].DoubleSided == on then(
							$[i].DoubleSided = off
						)else(
							$[i].DoubleSided = on
						)
				)
				
			)
			
		)
		
		
		
		button invisibleButton "Invisible" width:170 height:30 pos:[0,60]
		on invisibleButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.invisible == on then(
							$.invisible = off
						)else(
							$.invisible = on
						)
						
				)else (
						
						if $[i].invisible == on then(
							$[i].invisible = off
						)else(
							$[i].invisible = on
						)
				)
				
			)
			
		)
		
		
		
		
		button noDecayButton "No Decay" width:170 height:30 pos:[0,90]
		on noDecayButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.noDecay == on then(
							$.noDecay = off
						)else(
							$.noDecay = on
						)
						
				)else (
						
						if $[i].noDecay == on then(
							$[i].noDecay = off
						)else(
							$[i].noDecay = on
						)
				)
				
			)
			
		)
		
		
		
		
		button skylightPortalButton "SkyLight Portal" width:170 height:30 pos:[0,120]
		on skylightPortalButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.skylightPortal == on then(
							$.skylightPortal = off
						)else(
							$.skylightPortal = on
						)
						
				)else (
						
						if $[i].skylightPortal == on then(
							$[i].skylightPortal = off
						)else(
							$[i].skylightPortal = on
						)
				)
				
			)
			
		)
		
		
		
		
		button simplePortalButton "Simple Portal" width:170 height:30 pos:[0,150]
		
		on simplePortalButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.simplePortal == on then(
							$.simplePortal = off
							
						)else(
							if $.skylightPortal == on then(
									$.simplePortal = on
								)else(
									Messagebox ("You need to activeted SkyLight Portal" as string) title:"SkyLight Simple Portal"
									)
							)
						
				)else (
						
						if $[i].simplePortal == on then(
							$[i].simplePortal = off
							lightSimpleMsg = 0
						)else(
							if $[i].skylightPortal == on then(
								$[i].simplePortal = on
								lightSimpleMsg = 0
							)else(
									lightSimpleMsg = 1
									)
						)
				)
				
			)
			
			if lightSimpleMsg != 0 then(
				Messagebox ("You need to activeted SkyLight Portal" as string) title:"SkyLight Simple Portal"
				)
			
		)
		
		
		
		
		
		button affectReflectionsButton "Affect Reflections" width:170 height:30 pos:[0,180]
		on affectReflectionsButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					
					if $.affect_reflections == on then(
							$.affect_reflections = off
						)else(
							$.affect_reflections = on
						)
						
				)else (
						
						if $[i].affect_reflections == on then(
							$[i].affect_reflections = off
						)else(
							$[i].affect_reflections = on
						)
				)
				
			)
			
		)
		

		
		spinner spnNbIter "length:" pos:[0,215] width:150 height:16 range:[0.00,1000000,1] type:#float enabled:true
		spinner spnNbIter2 "width:" pos:[0,230] width:150 height:16 range:[0.00,1000000,1] type:#float enabled:true
		
		button newSizesButton "New Sizes" width:170 height:30 pos:[0,250]
		on newSizesButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					local nbIter = spnNbIter.value
					local nbIter2 = spnNbIter2.value
					$.baseObject.size0 = nbIter
					$.baseObject.size1 = nbIter2
						
				)else (
					local nbIter3 = spnNbIter.value
					local nbIter4 = spnNbIter2.value
					
						$[i].baseObject.size0 = nbIter3
						$[i].baseObject.size1 = nbIter4
					
				)
				
			)
			
		)
			
	spinner spnNbIter3 "subdivs:" pos:[0,285] width:150 height:16 range:[0,1000000,1] type:#integer enabled:true	
		
			button subdivsButton "SubdivsButton" width:170 height:30 pos:[0,300]
		on subdivsButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					local nbIter5 = spnNbIter3.value
					$.subdivs = nbIter5
						
				)else (
					local nbIter6 = spnNbIter3.value
					$[i].subdivs = nbIter6
					
				)
				
			)
			
		)
		
		
		spinner spnNbIter4 "Multiplier:" pos:[0,335] width:150 height:16 range:[0,1000000,1] type:#float enabled:true	
		
			button multiplierButton "New Multiplayer" width:170 height:30 pos:[0,350]
		on multiplierButton pressed do
		(
			for i in 1 to selection.count do
			(
				if selection.count == 1 then(
					local nbIter7 = spnNbIter4.value
					$.multiplier = nbIter7
						
				)else (
					local nbIter8 = spnNbIter4.value
					$[i].multiplier = nbIter8
					
				)
				
			)
			
		)
		
	)
	
	RolloutFloterTemplate = newrolloutfloater "AllFunction" 175 400
	addrollout RolloutTemplate RolloutFloterTemplate
