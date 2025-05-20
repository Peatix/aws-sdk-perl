
package Paws::CustomerProfiles::GetSegmentDefinition;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SegmentDefinitionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegmentDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetSegmentDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentDefinition - Arguments for method GetSegmentDefinition on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentDefinition on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetSegmentDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentDefinition.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetSegmentDefinitionResponse = $profile->GetSegmentDefinition(
      DomainName            => 'Myname',
      SegmentDefinitionName => 'Myname',

    );

    # Results:
    my $CreatedAt   = $GetSegmentDefinitionResponse->CreatedAt;
    my $Description = $GetSegmentDefinitionResponse->Description;
    my $DisplayName = $GetSegmentDefinitionResponse->DisplayName;
    my $SegmentDefinitionArn =
      $GetSegmentDefinitionResponse->SegmentDefinitionArn;
    my $SegmentDefinitionName =
      $GetSegmentDefinitionResponse->SegmentDefinitionName;
    my $SegmentGroups = $GetSegmentDefinitionResponse->SegmentGroups;
    my $Tags          = $GetSegmentDefinitionResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::GetSegmentDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetSegmentDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> SegmentDefinitionName => Str

The unique name of the segment definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentDefinition in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

