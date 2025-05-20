
package Paws::ConnectCases::CreateLayout;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::ConnectCases::LayoutContent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayout');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/layouts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::CreateLayoutResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateLayout - Arguments for method CreateLayout on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLayout on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method CreateLayout.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLayout.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $CreateLayoutResponse = $cases->CreateLayout(
      Content => {
        Basic => {
          MoreInfo => {
            Sections => [
              {
                FieldGroup => {
                  Fields => [
                    {
                      Id => 'MyFieldId',    # min: 1, max: 500

                    },
                    ...
                  ],    # max: 100
                  Name => 'MyFieldGroupNameString',    # max: 100; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          TopPanel => {
            Sections => [
              {
                FieldGroup => {
                  Fields => [
                    {
                      Id => 'MyFieldId',    # min: 1, max: 500

                    },
                    ...
                  ],    # max: 100
                  Name => 'MyFieldGroupNameString',    # max: 100; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      DomainId => 'MyDomainId',
      Name     => 'MyLayoutName',

    );

    # Results:
    my $LayoutArn = $CreateLayoutResponse->LayoutArn;
    my $LayoutId  = $CreateLayoutResponse->LayoutId;

    # Returns a L<Paws::ConnectCases::CreateLayoutResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/CreateLayout>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => L<Paws::ConnectCases::LayoutContent>

Information about which fields will be present in the layout, and
information about the order of the fields.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> Name => Str

The name of the layout. It must be unique for the Cases domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLayout in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

