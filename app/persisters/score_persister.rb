class ScorePersister < Persister

  def call(score_entity)
    score = mapping_from_entity(score_entity, ScoreModel)
    score.save!
  end

end