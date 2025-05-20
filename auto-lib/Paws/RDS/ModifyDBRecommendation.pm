
package Paws::RDS::ModifyDBRecommendation;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str');
  has RecommendationId => (is => 'ro', isa => 'Str', required => 1);
  has RecommendedActionUpdates => (is => 'ro', isa => 'ArrayRef[Paws::RDS::RecommendedActionUpdate]');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBRecommendationMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBRecommendationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBRecommendation - Arguments for method ModifyDBRecommendation on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBRecommendation on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBRecommendation.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBRecommendationMessage = $rds->ModifyDBRecommendation(
      RecommendationId         => 'MyString',
      Locale                   => 'MyString',    # OPTIONAL
      RecommendedActionUpdates => [
        {
          ActionId => 'MyString',
          Status   => 'MyString',

        },
        ...
      ],                                         # OPTIONAL
      Status => 'MyString',                      # OPTIONAL
    );

    # Results:
    my $DBRecommendation = $DBRecommendationMessage->DBRecommendation;

    # Returns a L<Paws::RDS::DBRecommendationMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBRecommendation>

=head1 ATTRIBUTES


=head2 Locale => Str

The language of the modified recommendation.



=head2 B<REQUIRED> RecommendationId => Str

The identifier of the recommendation to update.



=head2 RecommendedActionUpdates => ArrayRef[L<Paws::RDS::RecommendedActionUpdate>]

The list of recommended action status to update. You can update
multiple recommended actions at one time.



=head2 Status => Str

The recommendation status to update.

Valid values:

=over

=item *

active

=item *

dismissed

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBRecommendation in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

