

	-- ����
function Field_512001:OnSensorEnter_left(Actor)
	gamefunc:ChangeCustomEnv("left")
end

function Field_512001:OnSensorLeave_left(pActor)

	gamefunc:ChangeCurrentWeather( )
end

	-- ������
function Field_512001:OnSensorEnter_right(Actor)
	gamefunc:ChangeCustomEnv("right")
end

function Field_512001:OnSensorLeave_right(pActor)

	gamefunc:ChangeCurrentWeather( )
end

