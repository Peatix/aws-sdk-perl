
package Paws::Outposts::UpdateOutpost;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutpostId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);
  has SupportedHardwareType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOutpost');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::UpdateOutpostOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::UpdateOutpost - Arguments for method UpdateOutpost on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOutpost on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method UpdateOutpost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOutpost.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $UpdateOutpostOutput = $outposts->UpdateOutpost(
      OutpostId             => 'MyOutpostId',
      Description           => 'MyOutpostDescription',    # OPTIONAL
      Name                  => 'MyOutpostName',           # OPTIONAL
      SupportedHardwareType => 'RACK',                    # OPTIONAL
    );

    # Results:
    my $Outpost = $UpdateOutpostOutput->Outpost;

    # Returns a L<Paws::Outposts::UpdateOutpostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/UpdateOutpost>

=head1 ATTRIBUTES


=head2 Description => Str





=head2 Name => Str





=head2 B<REQUIRED> OutpostId => Str

The ID or ARN of the Outpost.



=head2 SupportedHardwareType => Str

The type of hardware for this Outpost.

Valid values are: C<"RACK">, C<"SERVER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOutpost in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

