module Resolvers
  class UserShow < GraphQL::Schema::Resolver
    type Types::UserType, null: false

    argument :id, Int, required: true

    def resolve(id:)
      User.find(id)
    end
  end
end
