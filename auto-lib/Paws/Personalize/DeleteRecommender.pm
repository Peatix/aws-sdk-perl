
package Paws::Personalize::DeleteRecommender;
  use Moose;
  has RecommenderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommenderArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRecommender');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DeleteRecommender - Arguments for method DeleteRecommender on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRecommender on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DeleteRecommender.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRecommender.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    $personalize->DeleteRecommender(
      RecommenderArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DeleteRecommender>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommenderArn => Str

The Amazon Resource Name (ARN) of the recommender to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRecommender in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

