
package Paws::DMS::StartRecommendations;
  use Moose;
  has DatabaseId => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::DMS::RecommendationSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartRecommendations - Arguments for method StartRecommendations on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRecommendations on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRecommendations.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    $dms->StartRecommendations(
      DatabaseId => 'MyString',
      Settings   => {
        InstanceSizingType => 'MyString',
        WorkloadType       => 'MyString',

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseId => Str

The identifier of the source database to analyze and provide
recommendations for.



=head2 B<REQUIRED> Settings => L<Paws::DMS::RecommendationSettings>

The settings in JSON format that Fleet Advisor uses to determine target
engine recommendations. These parameters include target instance sizing
and availability and durability settings. For target instance sizing,
Fleet Advisor supports the following two options: total capacity and
resource utilization. For availability and durability, Fleet Advisor
supports the following two options: production (Multi-AZ deployments)
and Dev/Test (Single-AZ deployments).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRecommendations in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

