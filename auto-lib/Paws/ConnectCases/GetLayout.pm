
package Paws::ConnectCases::GetLayout;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has LayoutId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'layoutId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLayout');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/layouts/{layoutId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::GetLayoutResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetLayout - Arguments for method GetLayout on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLayout on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method GetLayout.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLayout.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $GetLayoutResponse = $cases->GetLayout(
      DomainId => 'MyDomainId',
      LayoutId => 'MyLayoutId',

    );

    # Results:
    my $Content          = $GetLayoutResponse->Content;
    my $CreatedTime      = $GetLayoutResponse->CreatedTime;
    my $Deleted          = $GetLayoutResponse->Deleted;
    my $LastModifiedTime = $GetLayoutResponse->LastModifiedTime;
    my $LayoutArn        = $GetLayoutResponse->LayoutArn;
    my $LayoutId         = $GetLayoutResponse->LayoutId;
    my $Name             = $GetLayoutResponse->Name;
    my $Tags             = $GetLayoutResponse->Tags;

    # Returns a L<Paws::ConnectCases::GetLayoutResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/GetLayout>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> LayoutId => Str

The unique identifier of the layout.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLayout in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

