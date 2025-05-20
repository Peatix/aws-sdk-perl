
package Paws::CustomerProfiles::DetectProfileObjectType;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Objects => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectProfileObjectType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/detect/object-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::DetectProfileObjectTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DetectProfileObjectType - Arguments for method DetectProfileObjectType on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectProfileObjectType on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method DetectProfileObjectType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectProfileObjectType.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $DetectProfileObjectTypeResponse = $profile->DetectProfileObjectType(
      DomainName => 'Myname',
      Objects    => [
        'MystringifiedJson', ...    # min: 1, max: 256000
      ],

    );

    # Results:
    my $DetectedProfileObjectTypes =
      $DetectProfileObjectTypeResponse->DetectedProfileObjectTypes;

  # Returns a L<Paws::CustomerProfiles::DetectProfileObjectTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/DetectProfileObjectType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> Objects => ArrayRef[Str|Undef]

A string that is serialized from a JSON object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectProfileObjectType in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

