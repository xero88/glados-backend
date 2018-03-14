# Persist the Score (entity) in database via ScoreModel
class ScorePersister < Persister

  def self.call(score_entity)
    score = mapping_from_entity(score_entity, ScoreModel)
    score.save!
  end

end