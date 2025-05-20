
package Paws::S3Control::GetAccessPointScope;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessPointScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint/{name}/scope');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetAccessPointScopeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointScope - Arguments for method GetAccessPointScope on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessPointScope on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetAccessPointScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessPointScope.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetAccessPointScopeResult = $s3 -control->GetAccessPointScope(
      AccountId => 'MyAccountId',
      Name      => 'MyAccessPointName',

    );

    # Results:
    my $Scope = $GetAccessPointScopeResult->Scope;

    # Returns a L<Paws::S3Control::GetAccessPointScopeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetAccessPointScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID that owns the access point with the
scope that you want to retrieve.



=head2 B<REQUIRED> Name => Str

The name of the access point with the scope you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessPointScope in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

