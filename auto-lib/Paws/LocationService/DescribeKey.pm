
package Paws::LocationService::DescribeKey;
  use Moose;
  has KeyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KeyName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata/v0/keys/{KeyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DescribeKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeKey - Arguments for method DescribeKey on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKey on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DescribeKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKey.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DescribeKeyResponse = $geo->DescribeKey(
      KeyName => 'MyResourceName',

    );

    # Results:
    my $CreateTime   = $DescribeKeyResponse->CreateTime;
    my $Description  = $DescribeKeyResponse->Description;
    my $ExpireTime   = $DescribeKeyResponse->ExpireTime;
    my $Key          = $DescribeKeyResponse->Key;
    my $KeyArn       = $DescribeKeyResponse->KeyArn;
    my $KeyName      = $DescribeKeyResponse->KeyName;
    my $Restrictions = $DescribeKeyResponse->Restrictions;
    my $Tags         = $DescribeKeyResponse->Tags;
    my $UpdateTime   = $DescribeKeyResponse->UpdateTime;

    # Returns a L<Paws::LocationService::DescribeKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DescribeKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyName => Str

The name of the API key resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKey in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

