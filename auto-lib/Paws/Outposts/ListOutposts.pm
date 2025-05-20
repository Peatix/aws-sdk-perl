
package Paws::Outposts::ListOutposts;
  use Moose;
  has AvailabilityZoneFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'AvailabilityZoneFilter');
  has AvailabilityZoneIdFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'AvailabilityZoneIdFilter');
  has LifeCycleStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'LifeCycleStatusFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOutposts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListOutpostsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListOutposts - Arguments for method ListOutposts on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutposts on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListOutposts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutposts.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListOutpostsOutput = $outposts->ListOutposts(
      AvailabilityZoneFilter => [
        'MyAvailabilityZone', ...    # min: 1, max: 1000
      ],    # OPTIONAL
      AvailabilityZoneIdFilter => [
        'MyAvailabilityZoneId', ...    # min: 1, max: 255
      ],    # OPTIONAL
      LifeCycleStatusFilter => [
        'MyLifeCycleStatus', ...    # min: 1, max: 20
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOutpostsOutput->NextToken;
    my $Outposts  = $ListOutpostsOutput->Outposts;

    # Returns a L<Paws::Outposts::ListOutpostsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListOutposts>

=head1 ATTRIBUTES


=head2 AvailabilityZoneFilter => ArrayRef[Str|Undef]

Filters the results by Availability Zone (for example, C<us-east-1a>).



=head2 AvailabilityZoneIdFilter => ArrayRef[Str|Undef]

Filters the results by AZ ID (for example, C<use1-az1>).



=head2 LifeCycleStatusFilter => ArrayRef[Str|Undef]

Filters the results by the lifecycle status.



=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutposts in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

