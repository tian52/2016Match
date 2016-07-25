awk 'FNR<=70000{print}' t8all > t8all1
			awk 'FNR >= 70001 && FNR <= 135135 {print}' t8all > t8all2